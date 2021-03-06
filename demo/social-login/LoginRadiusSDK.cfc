<cfcomponent displayname="loginradiussdk" hint="This is the CFC for Customer Identity Management APIS">  
<!--- PRIVATE VARIABLES --->
<cfset variables.LR_API_ENDPOINT = 'https://api.loginradius.com/api/v2'>
<cfset variables.LR_USER_REG_API_ENDPOINT = 'https://api.loginradius.com'>

<cffunction name="loginradiusExchangeAccessToken" hint=" Fetch LoginRadius access token after authentication. It will be valid for the specific duration of time specified in the response">
<cfargument name="secret_key" type="string" required="true" />

<cfhttp url="#variables.LR_API_ENDPOINT#/access_token">
<cfhttpparam name="token" value="#form.token#" type="URL">
<cfhttpparam name="secret" value="#secret_key#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>  

<cffunction name="loginradiusGetUserProfiledata" hint="To fetch social profile data from the user's social account after authentication. The social profile will be retrieved via oAuth and OpenID protocols. The data is normalized into LoginRadius' standard data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/userprofile">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetPhotoAlbums" hint="To get the Albums data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/album">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusGetPhotos" hint="To fetch photo data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfargument name="albumId" type="int" required="false" />
<cfhttp url="#variables.LR_API_ENDPOINT#/photo">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
<cfhttpparam name="albumid" value="#arguments.albumId#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusGetCheckins" hint="To fetch check-ins data from the user's social account. The data will be normalized into LoginRadius' data format">   
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/checkin">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetAudio" hint="To fetch user's audio files data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/audio">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetContacts" hint="To fetch user's contacts/friends/connections data from the user's social account. The data will normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfargument name="nextCursor" type="string" required="false" default=""/>
<cfhttp url="#variables.LR_API_ENDPOINT#/contact">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
<cfhttpparam name="nextcursor" value="#arguments.nextCursor#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetMentions" hint="To get mention data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/mention">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetFollowing" hint="To get mention data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/following">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>

<cffunction name="loginradiusGetEvents" hint="To get the event data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/event">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>  

<cffunction name="loginradiusGetPosts" hint="To get posted messages from the user's social account. The data will be normalized into LoginRadius' data format ">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/post">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<cffunction name="loginradiusGetFollowedCompanies" hint="To get the followed company's data in the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/company">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<cffunction name="loginradiusGetGroups" hint="To get group data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/group">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<cffunction name="loginradiusGetStatus" hint=" To get the status messages from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/status">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<cffunction name="loginradiusGetVideo" hint="To get videos data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/video">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<cffunction name="loginradiusGetLikes" hint="To get likes data from the user's social account. The data will be normalized into LoginRadius' data format ">  
<cfargument name="accessToken" type="string" required="true" />
<cfhttp url="#variables.LR_API_ENDPOINT#/like">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>

 
<cffunction name="loginradiusGetPages" hint="To get the page data from the user's social account. The data will be normalized into LoginRadius' data format">  
<cfargument name="accessToken" type="string" required="true" />
<cfargument name="pageName" type="string" required="false" />
<cfhttp url="#variables.LR_API_ENDPOINT#/page">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
<cfhttpparam name="pagename" value="#arguments.pageName#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<cffunction name="loginradiusPostStatus" hint="To update the status on the user's wall">  
<cfargument name="accessToken" type="string" required="true" />
<cfargument name="title" type="string" required="true" />
<cfargument name="url" type="string" required="false" default=""/>
<cfargument name="imageurl" type="string" required="false" default="" />
<cfargument name="status" type="string" required="true" />
<cfargument name="caption" type="string" required="false" default="" />
<cfargument name="description" type="string" required="false" default="" />
<cfhttp method="Post"  url="#variables.LR_API_ENDPOINT#/status">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
<cfhttpparam name="title" value="#arguments.title#" type="URL">
<cfhttpparam name="url" value="#arguments.url#" type="URL">
<cfhttpparam name="imageurl" value="#arguments.imageurl#" type="URL">
<cfhttpparam name="status" value="#arguments.status#" type="URL">
<cfhttpparam name="caption" value="#arguments.caption#" type="URL">
<cfhttpparam name="description" value="#arguments.description#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<cffunction name="loginradiusSendMessage" hint="Post messages to the user's contacts. After using the Contact API, you can send messages to the retrieved contacts">  
<cfargument name="accessToken" type="string" required="true" />
<cfargument name="to" type="string" required="true" />
<cfargument name="subject" type="string" required="false" default=""/>
<cfargument name="message" type="string" required="false" default="" />
<cfhttp method="Post"  url="#variables.LR_API_ENDPOINT#/message">
<cfhttpparam name="access_token" value="#arguments.accessToken#" type="URL">
<cfhttpparam name="to" value="#arguments.to#" type="URL">
<cfhttpparam name="subject" value="#arguments.subject#" type="URL">
<cfhttpparam name="message" value="#arguments.message#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="username" value="#arguments.username#" type="URL">
<cfhttpparam name="password" value="#arguments.password#" type="URL">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusSetStatus"
hint="Block or un-block a user using the users unique UserID (UID).">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="uid" type="string" required="true" hint="unique UserID (UID)" />
<cfargument name="isblock" type="boolean" required="false" default=true hint="pass false to unblock the user." />

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/status">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="uid" value="#arguments.uid#" type="URL">
<cfhttpparam name="isblock" value="#arguments.isblock#" type="FormField">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of  params (valid json)

params =  {
  'emailid' = 'example@domain.com',
  'password' = 'xxxxxxxxxxx',
  'firstname' = 'first name',
  'lastname' = 'last name',
  'gender' = 'm',
  'birthdate' = 'MM-DD-YYYY',
   ....................
   ....................
}
--->  
<cffunction name="loginradiusCreateUser" 
hint="Create a new user on your site. This API bypasses the normal email verification process and manually creates the user for your system.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" hint ="data in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<!--- Example of params (valid json)

params =  {
  'accountid' = 'xxxxxxxxx',
  'password' = 'xxxxxxxxxxx',
  'emailid' = 'example@domain.com',
}
---> 
<cffunction name="loginradiusCreateRegistrationProfile"
hint="Create Raas profile">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" hint="data should be in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/account/profile">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusDeleteUser"
hint="Delete user using the users unique UserID (UID).">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="uid" type="string" required="true" hint="unique UserID (UID)" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/delete">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="uid" value="#arguments.uid#" type="URL">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusGetHashedPassword"
hint="Retrieve the password(hashed) from the user profile associated with the user account">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="id" type="string" required="true" hint="Raas Account ID"/>

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/password">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.id#" type="URL">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (valid json) 

params =  {
  'oldpassword' = 'xxxxxxxxx',
  'newpassword' = 'xxxxxxxxxxx',
}
---> 
<cffunction name="loginradiusChangePassword"
hint="Update/Change the password of user.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="uid" type="string" required="true" hint="unique UserID (UID)"/>
<cfargument name="params" type="any" required="true" hint="data should be in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/password">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.uid#" type="URL">
<cfhttpparam  value="#arguments.params#" type="body">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (valid json)
params =  {
  'password' = 'xxxxxxxxx',
}
---> 
<cffunction name="loginradiusSetPassword"
hint="Set the password of user, used in admin section.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="userid" type="string" required="true" hint="Raas Account ID"/>
<cfargument name="params" type="any" required="true" hint="data should be in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/password">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.userid#" type="URL">
<cfhttpparam name="action" value="set" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetProfileData" 
hint="Retrieves the profile data associated with the specific user using the users unique UserID">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="uid" type="string" required="true" />
<cfhttp  url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.uid#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (valid json)
params =  {
  'emailid' = 'example@domain.com',
  'password' = 'xxxxxxxxxxx',
  'firstname' = 'first name',
  'lastname' = 'last name',
  'gender' = 'm',
  'birthdate' = 'MM-DD-YYYY',
   ....................
   ....................
}
---> 
<cffunction name="loginradiusUserRegistration"
hint="Register user from server side, verification email will be send to provided email address">
<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" hint="Data should be in json format"/>

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/register">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>



<!--- Example of  params (valid json)
params =  {
  'emailid' = 'example@domain.com',
  'password' = 'xxxxxxxxxxx',
  'firstname' = 'first name',
  'lastname' = 'last name',
  'gender' = 'm',
  'birthdate' = 'MM-DD-YYYY',
   ....................
   ....................
}
--->  
<cffunction name="loginradiusUpdateProfile"
hint="This API is used to Modify/Update details of an existing user">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="userid" type="string" required="true" />
<cfargument name="params" type="any" required="true" hint ="data in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.userid#" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<!--- Example of params (valid json)
params =  {
  'accountid' = 'abc',
  'provider' = 'xyz',
  'providerid'=>'xyz'
}
---> 
<cffunction name="loginradiusAccountLink"
hint="Link a user account with a specified providers user account.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" hint="Data should ne in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/account/link">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam  value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (valid json)
params =  {
  'accountid' = 'abc',
  'provider' = 'xyz',
  'providerid'=>'xyz'
}
---> 
<cffunction name="loginradiusAccountUnLink"
hint="Unlink a user account with a specified providers user account.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" />

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/account/unlink">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam  value="#arguments.params#" type="body">
</cfhttp>


<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetAccounts"
hint="Retrieve all of the profile data from each of the linked social provider accounts associated with the account. For ex: A user has linked facebook and google account then this api will retrieve both profile data.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="accountid" type="string" required="true" hint="unique UserID (UID)"/>

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/account">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="accountid" value="#arguments.accountid#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (vaild json)
params =  {
"firstname" = "xxxxxxxxxxx",
"lastname" = "xxxxxxxxxxxxxxxxx"
}
---> 

<cffunction name="loginradiusUpsertCustomObjects"
hint="Create custom objects, by providing ID of object, to a specified account if the object is not exist it will create a new object.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="accountid" type="string" required="true" hint="unique UserID (UID)"/>
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="params" type="any" required="true" hint= "Valid JSON obj as per your schema" />

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject/upsert">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="accountid" value="#arguments.accountid#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam  value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusRetrieveCustomObjectsByAccountId"
hint="Retrieve all of the custom objects by account ID (UID).">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="accountid" type="string" required="true" hint="unique UserID (UID)"/>
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>


<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="accountid" value="#arguments.accountid#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusCreateCustomObjectsByMultipleAccountIds"
hint="Retrieve all of the custom objects by account IDs (UID).">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="accountids" type="string" required="true" hint="Uid of the users separated by comma"/>
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>


<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="accountids" value="#arguments.accountids#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- 
query = "<Expression LogicalOperation='AND'>
<Field Name='Provider' ComparisonOperator='Equal'>facebook</Field>
<Expression LogicalOperation='OR'>
<Field Name='Gender' ComparisonOperator='Equal'>M</Field>
<Field Name='Gender' ComparisonOperator='Equal'>U</Field>
</Expression>
</Expression>";
------------------ OR ------------------
query = "<Field Name='Gender' ComparisonOperator='Equal'>F</Field>";
--->

<cffunction name="loginradiusRetrieveCustomObjectsByQuery"
hint="Retrieve all of the custom objects by an object�s unique ID and filtered by a query.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="query" type="string" required="true" hint="query to filter data"/>
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="indexvalue" type="string" required="false" default = 1 hint="Cursor value in case the data is large" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="q" value="#arguments.query#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="cursor" value="#arguments.indexvalue#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusRetrieveRecordsByObjectId"
hint="Retrieve all of the custom objects by an object�s unique ID and filtered by a query.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="indexvalue" type="string" required="false" default= 1 hint="Cursor value in case the data is large" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="cursor" value="#arguments.indexvalue#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusRetrieveCustomObjectsByRecordId"
hint="This API is used to retrieve all of the custom objects by an record�s unique ID.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="id" type="string" required="true"  hint="Record id " />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="id" value="#arguments.id#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusRetrieveStatsCustomObjects"
hint="Retrieve stats associated with a custom object">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="cursor" type="string" required="false"  default =1  hint="Cursor value in case the data is large" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="cursor" value="#arguments.cursor#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusSetStatusCustomObject"
hint="block/unblock custom objects">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="accountid" type="string" required="true" hint="Uniques user id (Uid)" />
<cfargument name="isblock" type="boolean" required="false" default=true hint="pass false to unblock the customobjects." />

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject/status">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="accountid" value="#arguments.accountid#" type="URL">
<cfhttpparam name="isblock" value="#arguments.isblock#" type="FormField">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusAuthenticateUser"
hint="Authenticate users and returns the profile data associated with the authenticated user.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="username" type="string" required="true" hint="email id of user"/>
<cfargument name="password" type="string" required="true" hint="password of user" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="username" value="#arguments.username#" type="URL">
<cfhttpparam name="password" value="#arguments.password#" type="URL">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusSetStatus"
hint="Block or un-block a user using the users unique UserID (UID).">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="uid" type="string" required="true" hint="unique UserID (UID)" />
<cfargument name="isblock" type="boolean" required="false" default=true hint="pass false to unblock the user." />

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/status">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="uid" value="#arguments.uid#" type="URL">
<cfhttpparam name="isblock" value="#arguments.isblock#" type="FormField">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of  params (valid json)

params =  {
  'emailid' = 'example@domain.com',
  'password' = 'xxxxxxxxxxx',
  'firstname' = 'first name',
  'lastname' = 'last name',
  'gender' = 'm',
  'birthdate' = 'MM-DD-YYYY',
   ....................
   ....................
}
--->  
<cffunction name="loginradiusCreateUser" 
hint="Create a new user on your site. This API bypasses the normal email verification process and manually creates the user for your system.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" hint ="data in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<!--- Example of params (valid json)

params =  {
  'accountid' = 'xxxxxxxxx',
  'password' = 'xxxxxxxxxxx',
  'emailid' = 'example@domain.com',
}
---> 
<cffunction name="loginradiusCreateRegistrationProfile"
hint="Create Raas profile">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" hint="data should be in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/account/profile">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusDeleteUser"
hint="Delete user using the users unique UserID (UID).">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="uid" type="string" required="true" hint="unique UserID (UID)" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/delete">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="uid" value="#arguments.uid#" type="URL">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusGetHashedPassword"
hint="Retrieve the password(hashed) from the user profile associated with the user account">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="id" type="string" required="true" hint="Raas Account ID"/>

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/password">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.id#" type="URL">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (valid json) 

params =  {
  'oldpassword' = 'xxxxxxxxx',
  'newpassword' = 'xxxxxxxxxxx',
}
---> 
<cffunction name="loginradiusChangePassword"
hint="Update/Change the password of user.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="uid" type="string" required="true" hint="unique UserID (UID)"/>
<cfargument name="params" type="any" required="true" hint="data should be in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/password">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.uid#" type="URL">
<cfhttpparam  value="#arguments.params#" type="body">
</cfhttp>

<!--- Get Response --->
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (valid json)
params =  {
  'password' = 'xxxxxxxxx',
}
---> 
<cffunction name="loginradiusSetPassword"
hint="Set the password of user, used in admin section.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="userid" type="string" required="true" hint="Raas Account ID"/>
<cfargument name="params" type="any" required="true" hint="data should be in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/password">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.userid#" type="URL">
<cfhttpparam name="action" value="set" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetProfileData" 
hint="Retrieves the profile data associated with the specific user using the users unique UserID">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="uid" type="string" required="true" />
<cfhttp  url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.uid#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (valid json)
params =  {
  'emailid' = 'example@domain.com',
  'password' = 'xxxxxxxxxxx',
  'firstname' = 'first name',
  'lastname' = 'last name',
  'gender' = 'm',
  'birthdate' = 'MM-DD-YYYY',
   ....................
   ....................
}
---> 
<cffunction name="loginradiusUserRegistration"
hint="Register user from server side, verification email will be send to provided email address">
<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" hint="Data should be in json format"/>

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/register">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>



<!--- Example of  params (valid json)
params =  {
  'emailid' = 'example@domain.com',
  'password' = 'xxxxxxxxxxx',
  'firstname' = 'first name',
  'lastname' = 'last name',
  'gender' = 'm',
  'birthdate' = 'MM-DD-YYYY',
   ....................
   ....................
}
--->  
<cffunction name="loginradiusUpdateProfile"
hint="This API is used to Modify/Update details of an existing user">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="userid" type="string" required="true" />
<cfargument name="params" type="any" required="true" hint ="data in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="userid" value="#arguments.userid#" type="URL">
<cfhttpparam value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction>


<!--- Example of params (valid json)
params =  {
  'accountid' = 'abc',
  'provider' = 'xyz',
  'providerid'=>'xyz'
}
---> 
<cffunction name="loginradiusAccountLink"
hint="Link a user account with a specified providers user account.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" hint="Data should ne in json format"/>

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/account/link">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam  value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (valid json)
params =  {
  'accountid' = 'abc',
  'provider' = 'xyz',
  'providerid'=>'xyz'
}
---> 
<cffunction name="loginradiusAccountUnLink"
hint="Unlink a user account with a specified providers user account.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="params" type="any" required="true" />

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/account/unlink">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam  value="#arguments.params#" type="body">
</cfhttp>


<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusGetAccounts"
hint="Retrieve all of the profile data from each of the linked social provider accounts associated with the account. For ex: A user has linked facebook and google account then this api will retrieve both profile data.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="accountid" type="string" required="true" hint="unique UserID (UID)"/>

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/account">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="accountid" value="#arguments.accountid#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- Example of params (vaild json)
params =  {
"firstname" = "xxxxxxxxxxx",
"lastname" = "xxxxxxxxxxxxxxxxx"
}
---> 

<cffunction name="loginradiusUpsertCustomObjects"
hint="Create custom objects, by providing ID of object, to a specified account if the object is not exist it will create a new object.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="accountid" type="string" required="true" hint="unique UserID (UID)"/>
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="params" type="any" required="true" hint= "Valid JSON obj as per your schema" />

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject/upsert">
<cfhttpparam type="header" name="Content-Type" value="application/json" />
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="accountid" value="#arguments.accountid#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam  value="#arguments.params#" type="body">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 


<cffunction name="loginradiusRetrieveCustomObjectsByAccountId"
hint="Retrieve all of the custom objects by account ID (UID).">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="accountid" type="string" required="true" hint="unique UserID (UID)"/>
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>


<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="accountid" value="#arguments.accountid#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusCreateCustomObjectsByMultipleAccountIds"
hint="Retrieve all of the custom objects by account IDs (UID).">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="accountids" type="string" required="true" hint="Uid of the users separated by comma"/>
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>


<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="accountids" value="#arguments.accountids#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<!--- 
query = "<Expression LogicalOperation='AND'>
<Field Name='Provider' ComparisonOperator='Equal'>facebook</Field>
<Expression LogicalOperation='OR'>
<Field Name='Gender' ComparisonOperator='Equal'>M</Field>
<Field Name='Gender' ComparisonOperator='Equal'>U</Field>
</Expression>
</Expression>";
------------------ OR ------------------
query = "<Field Name='Gender' ComparisonOperator='Equal'>F</Field>";
--->

<cffunction name="loginradiusRetrieveCustomObjectsByQuery"
hint="Retrieve all of the custom objects by an object�s unique ID and filtered by a query.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="query" type="string" required="true" hint="query to filter data"/>
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="indexvalue" type="string" required="false" default = 1 hint="Cursor value in case the data is large" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="q" value="#arguments.query#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="cursor" value="#arguments.indexvalue#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusRetrieveRecordsByObjectId"
hint="Retrieve all of the custom objects by an object�s unique ID and filtered by a query.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="indexvalue" type="string" required="false" default= 1 hint="Cursor value in case the data is large" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="cursor" value="#arguments.indexvalue#" type="URL">
</cfhttp>
<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusRetrieveCustomObjectsByRecordId"
hint="This API is used to retrieve all of the custom objects by an record�s unique ID.">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="id" type="string" required="true"  hint="Record id " />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="id" value="#arguments.id#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusRetrieveStatsCustomObjects"
hint="Retrieve stats associated with a custom object">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="cursor" type="string" required="false"  default =1  hint="Cursor value in case the data is large" />

<cfhttp url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="cursor" value="#arguments.cursor#" type="URL">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusSetStatusCustomObject"
hint="block/unblock custom objects">

<!--- Define arguments. --->
<cfargument name="raas_api_key" type="string" required="true" hint="Raas API Key that you got from LoginRadius" />
<cfargument name="raas_secret_key" type="string" required="true" hint="Raas Secret Key that you got from LoginRadius" />
<cfargument name="objectid" type="string" required="true" hint="LoginRadius Custom Object ID"/>
<cfargument name="accountid" type="string" required="true" hint="Uniques user id (Uid)" />
<cfargument name="isblock" type="boolean" required="false" default=true hint="pass false to unblock the customobjects." />

<cfhttp method="Post" url="#variables.LR_USER_REG_API_ENDPOINT#/raas/v1/user/customObject/status">
<cfhttpparam name="appkey" value="#arguments.raas_api_key#" type="URL">
<cfhttpparam name="appsecret" value="#arguments.raas_secret_key#" type="URL">
<cfhttpparam name="objectid" value="#arguments.objectid#" type="URL">
<cfhttpparam name="accountid" value="#arguments.accountid#" type="URL">
<cfhttpparam name="isblock" value="#arguments.isblock#" type="FormField">
</cfhttp>

<cfreturn loginradiusGetReponse(cfhttp)>
</cffunction> 

<cffunction name="loginradiusGetReponse" hint="I read json response of APIs">  
<cfargument name="cfhttp"  required="true" />
<cfset response =  Deserializejson(arguments.cfhttp.filecontent)>

<!--- check errorcode exist in response --->
<cfif IsStruct(response) && structkeyexists(response, "errorCode")>

<!--- throw exception --->
<cfthrow  
    message = "#response.message#"
    type = "LoginRadiusException"   
    detail = "#response.description#"
    errorCode = "#response.errorCode#"
> 
</cfif>
<cfreturn response>
</cffunction>
</cfcomponent>