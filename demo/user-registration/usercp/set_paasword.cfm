﻿<cfif structkeyexists(form, "password")>
	<cfif structkeyexists(Session.userProfile, "Uid")>
		<cfset SdkObject = createObject("component","sdk/loginradiussdk")>
			<cfset setPasswordParams = StructNew() />
			<cfset setPasswordParams.accountid ="#Session.userProfile.Uid#" />
			<cfset setPasswordParams.password = "#form.password#" />
			<cfset setPasswordParams.emailid = "#form.emailid#" />
			<cfset message ='Password is not SET'>
				<cftry>
					<cfscript>
						serializer = new lib.JsonSerializer()
						.asString( "accountid" )
						.asString( "password" )
						.asString( "emailid" )
						;
					</cfscript>
					<cfset setPasswordResult = SdkObject.loginradiusCreateRegistrationProfile(RAAS_API_KEY, RAAS_SECRET_KEY, serializer.serialize( setPasswordParams ))>
						<cfif structkeyexists(setPasswordResult, "isPosted")>
							<cfif setPasswordResult.isPosted EQ true>
								<cfset message ='Your Password set successfully'>
								</cfif>
							</cfif>

							<cfcatch type = "LoginRadiusException"> 
								<cfset message ='#cfcatch.message#'>
								</cfcatch> 
							</cftry>

							<cfoutput>
								<script type="text/javascript">
								window.onload=function () {
									handleResponse(true, '#message#', true);
								}
								</script>

							</cfoutput>
						</cfif>
					</cfif>