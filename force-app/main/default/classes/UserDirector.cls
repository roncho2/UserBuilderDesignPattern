/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-18-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public with sharing class UserDirector {
    
    IUserBuilder userBuilder; 

    public User build(IUserBuilder userBuilder){
        this.userBuilder = userBuilder;

        userBuilder.setFirstName();
        userBuilder.setLastName();
        userBuilder.setAlias();
        userBuilder.setEmail();
        userBuilder.setProfile();
        userBuilder.setTimeZone();
        userBuilder.setUserName();
        userBuilder.setPermSets();
        userBuilder.setEmailEncodingKey();
        userBuilder.setLanguageKey();
        userBuilder.setLocalSIDkey();
        return userBuilder.getUser();


    }
}