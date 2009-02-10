/*
 *
 *
 * Copyright (C) 2008 Pingtel Corp., certain elements licensed under a Contributor Agreement.  
 * Contributors retain copyright to elements licensed under a Contributor Agreement.
 * Licensed to the User under the LGPL license.
 * 
 *
 */
package org.sipfoundry.sipxconfig.device;

import java.io.OutputStream;

import org.sipfoundry.sipxconfig.admin.ConfigurationFile;
import org.sipfoundry.sipxconfig.admin.commserver.Location;
import org.sipfoundry.sipxconfig.admin.commserver.SipxReplicationContext;
import org.springframework.beans.factory.annotation.Required;

/**
 * Special type profile location that is using replication context to push profiles
 */
public class ReplicatedProfileLocation extends MemoryProfileLocation {

    private SipxReplicationContext m_replicationContext;
    private String m_directory;
    private String m_name;
    private Location m_location;

    @Required
    public void setReplicationContext(SipxReplicationContext replicationContext) {
        m_replicationContext = replicationContext;
    }
    
    @Required
    public void setName(String name) {
        m_name = name;
    }
    
    @Required
    public void setDirectory(String directory) {
        m_directory = directory;
    }

    public void setLocation(Location location) {
        m_location = location;
    }

    public void closeOutput(OutputStream stream) {
        super.closeOutput(stream);
        if (null == m_location) {
            ConfigurationFile configuration = new InMemoryConfiguration(m_directory, m_name, toString());
            m_replicationContext.replicate(configuration);
        } else {
            LocationSpecificInMemoryConfiguration configuration = new LocationSpecificInMemoryConfiguration(m_directory,
                    m_name, toString());
            configuration.setLocation(m_location);
            m_replicationContext.replicate((ConfigurationFile) configuration);
        }
    }

    public void removeProfile(String profileName) {
        super.removeProfile(profileName);
        // FIXME: no way to remove replicated profiles at the moment
    }

    private class LocationSpecificInMemoryConfiguration extends InMemoryConfiguration {
        private Location m_location;

        public LocationSpecificInMemoryConfiguration(String directory, String name, String content) {
            super(directory, name, content);
        }

        public void setLocation(Location location) {
            m_location = location;
        }

        @Override
        public boolean isReplicable(Location location) {
            return (location.getAddress().equals(m_location.getAddress()));
        }
    }
}
