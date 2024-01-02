//
//  IntegratorDefaults.swift
//
//
//  Created by Baluta Eugen on 08.11.2023.
//  All rights reserved to Midnight.Works
//

import Foundation

public struct IntegratorDefaults {
    private static var defaults = UserDefaults.standard
    
    struct Keys {
        static var session = "integration_session_time"
        static var compromised = "integration_compromised"
        static var campaign = "integration_campaign"
        static var tracking = "integration_tracking"
        static var acquired = "integration_acquired"
    }
    
    public static var integrationSessionStart: Date {
        set { defaults.set(newValue, forKey: Keys.session) }
        get {
            guard let date = defaults.object(forKey: Keys.session) as? Date else {
                return Date()
            }
            
            return date
        }
    }
    
    public static var integrationCompromised: Bool {
        get { defaults.bool(forKey: Keys.compromised) }
        set { defaults.set(newValue, forKey: Keys.compromised) }
    }
    
    public static var integrationCampaign: String? {
        get { defaults.string(forKey: Keys.campaign) }
        set { defaults.setValue(newValue, forKey: Keys.campaign) }
    }
    
    public static var integrationTrackingID: String? {
        get { defaults.string(forKey: Keys.tracking) }
        set { defaults.setValue(newValue, forKey: Keys.tracking) }
    }
    
    public static var isAqcuired: Bool {
        get { defaults.bool(forKey: Keys.acquired) }
        set { defaults.set(newValue, forKey: Keys.acquired) }
    }
}
