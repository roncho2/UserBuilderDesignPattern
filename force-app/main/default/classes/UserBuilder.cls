/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-18-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class UserBuilder {



    public with sharing class Admin implements IUserBuilder{
        User user;

        public Admin(){
            this.user = new User();
        }




        public void setFirstName(){
            user.FirstName = 'Test';


        }
        public void setLastName(){
            user.LastName = 'TestAdmin';

        }
        public void setAlias(){
            user.Alias = 'testAdmin';

        }
        public void setUserName(){
            user.UserName = 'testAdminUser@' + String.valueOf(Crypto.getRandomInteger()) + '.com';

        }
        public void setEmail(){
            user.Email = 'fake@test.com';

        }
        public void setEmailEncodingKey(){
            user.EmailEncodingKey = 'UTF-8';

        }
        public void setLocalSIDkey(){
            user.LocaleSidKey = 'en_US';

        }
        public void setProfile(){
            Profile profile = [SELECT Id FROM Profile WHERE Name = 'System Administrator '];
            user.ProfileId = profile.Id;

        }
        public void setTimeZone(){
            user.TimeZonSidKey = 'America/Los_Angeles';

        }
        public void setPermSets(){

        }
        public void setLanguageKey(){
            user.LanguageLocaleKey = 'en_US';

        }
    
        public User getUser(){
            return this.user;

        }

    }

    public with sharing class Standard implements IUserBuilder{
        public User user { get;  private set; }


        public Standard(){
            this.user = new User();
        }

        public void setFirstName(){
            user.FirstName = 'Test';
        }

        public void setLastName(){
            user.LastName = 'Standard User';
        }

        public void setEmail(){
            user.Email = 'fake@Test.com';
        }

        public void setUserName(){
            user.UserName = 'testStandardUser@' + String.valueOf(Crypto.getRandomInteger()) + '.com';
        }


        public void setProfile(){
            Profile profile = [SELECT Id FROM Profile WHERE Name = 'Standard User'];
            user.ProfileId = profile.Id;
        }

        public void setEmailEncodingKey(){
            user.EmailEncodingKey = 'UTF-8';
        }

        public void setAlais(){
            user.Alais = 'Standard';
        }

        public void setLanguageKey(){
            user.LanguageLocaleKey = 'en_US';
        }

        public void setTimeZone(){
            user.TimeZoneSidKey = 'America/Los_Angeles';
        }

        public void setPermSets(){

        }

        public User getUser(){
            return user;
        }


    }


    
}