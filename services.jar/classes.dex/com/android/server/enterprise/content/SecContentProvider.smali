.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATIONPERMISSIONCONTROL:I = 0x17

.field private static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final DEX:I = 0x1d

.field private static final DLP:I = 0x1b

.field private static final DOMAIN_FILTER:I = 0x1c

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLog/AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLog/OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLog/OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_DOMAINFILTER_ISENABLED:Ljava/lang/String; = "28/getDefaultCaptivePortalUrl"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field private static final RESTRICTION:I = 0x1e

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SEAMS:I = 0x1a

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field private static final SPDCONTROL:I = 0x19

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ApplicationPermissionControlPolicy"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SeamsPolicy"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DlpPolicy"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DomainFilterPolicy"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DexPolicy"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string/jumbo v1, "fail to get caller name"

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method public static notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :try_start_6
    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, p1, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_2a
    .catchall {:try_start_6 .. :try_end_25} :catchall_28

    goto :goto_e

    :cond_26
    const/4 v3, 0x1

    goto :goto_33

    :catchall_28
    move-exception v2

    goto :goto_51

    :catch_2a
    move-exception v2

    :try_start_2b
    const-string v4, "SecContentProvider"

    const-string/jumbo v5, "notifyPolicyChangesAllUser() : failed to notify"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_28

    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v3, :cond_50

    const-string v2, "SecContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPolicyChangesAllUser() : notify has failed. uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void

    :goto_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_15
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    const/4 v2, 0x1

    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :catchall_13
    move-exception v3

    goto :goto_41

    :catch_15
    move-exception v3

    :try_start_16
    const-string v4, "SecContentProvider"

    const-string/jumbo v5, "notifyPolicyChangesAsUser() : failed to notify"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_13

    goto :goto_f

    :goto_1f
    if-nez v2, :cond_40

    const-string v3, "SecContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPolicyChangesAsUser() : notify has failed. userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void

    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.knox.provider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method getArrayLength([Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    nop

    :try_start_5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_b

    move v0, v1

    goto :goto_15

    :catch_b
    move-exception v1

    const-string v2, "SecContentProvider"

    const-string/jumbo v3, "getArrayLength() return 0 but some exception occurs with invalid request."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "SecContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insert(), uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SecContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11a

    const/16 v2, 0xa

    if-eq v1, v2, :cond_ee

    const/16 v2, 0xe

    if-eq v1, v2, :cond_bd

    const/16 v2, 0x14

    if-eq v1, v2, :cond_8c

    packed-switch v1, :pswitch_data_1c8

    goto/16 :goto_1c5

    :pswitch_55
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v1, :cond_1c5

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fail"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_88

    const-string/jumbo v4, "notifyCertificateFailure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    if-eqz v3, :cond_88

    const-string/jumbo v4, "module"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_88
    goto/16 :goto_1c5

    :pswitch_8a
    goto/16 :goto_1c5

    :cond_8c
    const-string/jumbo v1, "security_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v1, :cond_1c5

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    const-string/jumbo v3, "setDodBannerVisibleStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "isVisible"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :cond_bb
    goto/16 :goto_1c5

    :cond_bd
    const-string/jumbo v1, "password_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v1, :cond_1c5

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ec

    const-string/jumbo v3, "setPwdChangeRequested"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "flag"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    :cond_ec
    goto/16 :goto_1c5

    :cond_ee
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v1, :cond_1c5

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_118

    const-string/jumbo v3, "saveURLBlockedReport"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :cond_118
    goto/16 :goto_1c5

    :cond_11a
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_1c5

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_182

    const-string v2, "AuditLoggerAsUser"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v2, "severity"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v2, "group"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v2, "outcome"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v2, "uid"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v2, "component"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "userid"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v2, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1c4

    :cond_182
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v2, "severity"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v2, "group"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v2, "outcome"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v2, "uid"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v2, "component"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_1c4
    nop

    :cond_1c5
    :goto_1c5
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_1c8
    .packed-switch 0x5
        :pswitch_8a
        :pswitch_55
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "SecContentProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "query(), uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v10, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " selection = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SecContentProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "called from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/16 v10, 0x10

    const/16 v15, 0x8

    const/16 v16, 0x5

    const/4 v9, 0x4

    const/16 v17, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v11, 0x0

    packed-switch v8, :pswitch_data_2a90

    :pswitch_67
    goto/16 :goto_2a8d

    :pswitch_69
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x499d26f4

    if-eq v9, v10, :cond_80

    goto :goto_8b

    :cond_80
    const-string/jumbo v9, "isLocalContactStorageAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    move/from16 v17, v11

    :cond_8b
    :goto_8b
    if-eqz v17, :cond_96

    const-string v9, "SecContentProvider"

    const-string/jumbo v10, "return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_96
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isLocalContactStorageAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    nop

    return-object v7

    :pswitch_ba
    const-string/jumbo v8, "dex_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/dex/DexPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2ad0

    goto :goto_105

    :sswitch_cf
    const-string/jumbo v9, "isVirtualMacAddressEnforced"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v9, 0x3

    goto :goto_107

    :sswitch_da
    const-string/jumbo v9, "isEthernetOnlyEnforced"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    move v9, v12

    goto :goto_107

    :sswitch_e5
    const-string/jumbo v10, "getVirtualMacAddress"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_105

    goto :goto_107

    :sswitch_ef
    const-string/jumbo v9, "isScreenTimeoutChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    move v9, v11

    goto :goto_107

    :sswitch_fa
    const-string/jumbo v9, "isDexDisabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    move v9, v14

    goto :goto_107

    :cond_105
    :goto_105
    move/from16 v9, v17

    :goto_107
    packed-switch v9, :pswitch_data_2ae6

    return-object v13

    :pswitch_10b
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getVirtualMacAddress()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getVirtualMacAddress"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_199

    :pswitch_125
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isVirtualMacAddressEnforced()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isVirtualMacAddressEnforced"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_199

    :pswitch_142
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isEthernetOnlyEnforced"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_199

    :pswitch_15f
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isDexDisabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_199

    :pswitch_17c
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isScreenTimeoutChangeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_199
    return-object v7

    :pswitch_19a
    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x1371088

    if-eq v8, v9, :cond_1a6

    goto :goto_1b1

    :cond_1a6
    const-string/jumbo v8, "getDefaultCaptivePortalUrl"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b1

    move/from16 v17, v11

    :cond_1b1
    :goto_1b1
    if-eqz v17, :cond_1b4

    goto :goto_1e0

    :cond_1b4
    const-string v8, "SecContentProvider"

    const-string/jumbo v9, "getDefaultCaptivePortalUrl"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "firewall"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v9, 0x0

    if-eqz v8, :cond_1cc

    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v9

    :cond_1cc
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getDefaultCaptivePortalUrl"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1e0
    return-object v7

    :pswitch_1e1
    if-eqz v2, :cond_27d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x1d831fed

    if-eq v8, v9, :cond_1fe

    const v9, 0x67e79726

    if-eq v8, v9, :cond_1f2

    goto :goto_209

    :cond_1f2
    const-string/jumbo v8, "isAllowedToShare"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_209

    move/from16 v17, v11

    goto :goto_209

    :cond_1fe
    const-string/jumbo v8, "isDLPActivated"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_209

    move/from16 v17, v14

    :cond_209
    :goto_209
    packed-switch v17, :pswitch_data_2af4

    const-string v8, "SecContentProvider"

    const-string v9, "Case DLP selection is not matched"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_214
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isDLPActivated"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    nop

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cursor not null:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v9, v14, [Ljava/lang/Boolean;

    aput-object v8, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_27c

    :pswitch_248
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isAllowedToShare"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    nop

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cursor not null:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v9, v14, [Ljava/lang/Boolean;

    aput-object v8, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_27c
    return-object v7

    :cond_27d
    const-string v8, "SecContentProvider"

    const-string v9, "Case DLP selection null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a8d

    :pswitch_286
    const-string v8, "SEAMService"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/android/server/SEAMService;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x74717860

    if-eq v9, v10, :cond_2ad

    const v10, -0x1b958fde

    if-eq v9, v10, :cond_2a1

    goto :goto_2b8

    :cond_2a1
    const-string/jumbo v9, "getAllSEContainerCategory"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b8

    move/from16 v17, v14

    goto :goto_2b8

    :cond_2ad
    const-string/jumbo v9, "getSEContainerClipboardMode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b8

    move/from16 v17, v11

    :cond_2b8
    :goto_2b8
    packed-switch v17, :pswitch_data_2afc

    return-object v13

    :pswitch_2bc
    invoke-virtual {v8}, Lcom/android/server/SEAMService;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllSEContainerCategory"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_31e

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_31e

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2d9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    new-array v13, v14, [Ljava/lang/Integer;

    aput-object v12, v13, v11

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d9

    :pswitch_2ed
    if-eqz v3, :cond_31f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2f6

    goto :goto_31f

    :cond_2f6
    aget-object v9, v3, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/SEAMService;->getSEContainerClipboardMode(I)I

    move-result v9

    if-ne v9, v14, :cond_304

    move v9, v14

    goto :goto_305

    :cond_304
    move v9, v11

    :goto_305
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getSEContainerClipboardMode"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_31e
    return-object v7

    :cond_31f
    :goto_31f
    return-object v13

    :pswitch_320
    const-string v8, "date_time_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x57099b48

    if-eq v9, v10, :cond_347

    const v10, 0x333ea7e2

    if-eq v9, v10, :cond_33b

    goto :goto_352

    :cond_33b
    const-string/jumbo v9, "getAutomaticTime"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_352

    move/from16 v17, v14

    goto :goto_352

    :cond_347
    const-string/jumbo v9, "isDateTimeChangeEnalbed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_352

    move/from16 v17, v11

    :cond_352
    :goto_352
    packed-switch v17, :pswitch_data_2b04

    return-object v13

    :pswitch_356
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAutomaticTime"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_39a

    :pswitch_378
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isDateTimeChangeEnalbed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_39a
    nop

    return-object v7

    :pswitch_39c
    const-string v8, "apppermission_control_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    if-eqz v3, :cond_401

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_3b1

    goto :goto_401

    :cond_3b1
    const-string/jumbo v9, "getPermissionBlockedList"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a8d

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aget-object v10, v3, v14

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Ljava/util/List;

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v12, v3, v11

    invoke-virtual {v8, v10, v12, v9}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionBlockedList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "getPermissionBlockedList"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    if-eqz v10, :cond_400

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_400

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3ec
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_400

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-array v15, v14, [Ljava/lang/String;

    aput-object v13, v15, v11

    invoke-virtual {v7, v15}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3ec

    :cond_400
    return-object v7

    :cond_401
    :goto_401
    return-object v13

    :pswitch_402
    const-string/jumbo v8, "smartcard_browser_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_43a

    const-string/jumbo v9, "isAuthenticationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43a

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isAuthenticationEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :cond_43a
    if-eqz v2, :cond_2a8d

    const-string/jumbo v9, "getClientCertificateAlias"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a8d

    if-eqz v3, :cond_474

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_44e

    goto :goto_474

    :cond_44e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v11

    aget-object v12, v3, v14

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v9, v10, v12}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getClientCertificateAlias"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :cond_474
    :goto_474
    return-object v13

    :pswitch_475
    goto/16 :goto_2a8d

    :pswitch_477
    const-string/jumbo v8, "security_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x6e1bb3c9

    if-eq v9, v10, :cond_49f

    const v10, 0x741c2b00

    if-eq v9, v10, :cond_493

    goto :goto_4aa

    :cond_493
    const-string/jumbo v9, "getCredentialStorageStatus"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4aa

    move/from16 v17, v14

    goto :goto_4aa

    :cond_49f
    const-string/jumbo v9, "isDodBannerVisible"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4aa

    move/from16 v17, v11

    :cond_4aa
    :goto_4aa
    packed-switch v17, :pswitch_data_2b0c

    return-object v13

    :pswitch_4ae
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v12, v14, [Ljava/lang/String;

    aput-object v2, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCredentialStorageStatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_506

    :pswitch_4e4
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isDodBannerVisible"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_506
    return-object v7

    :pswitch_507
    const-string/jumbo v8, "roaming_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x3edf31d1

    if-eq v9, v10, :cond_54d

    const v10, -0x15a386e9

    if-eq v9, v10, :cond_542

    const v10, -0xc145ad8

    if-eq v9, v10, :cond_538

    const v10, 0x4744a7b8

    if-eq v9, v10, :cond_52d

    goto :goto_558

    :cond_52d
    const-string/jumbo v9, "isRoamingPushEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_558

    move v12, v14

    goto :goto_55a

    :cond_538
    const-string/jumbo v9, "isRoamingDataEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_558

    goto :goto_55a

    :cond_542
    const-string/jumbo v9, "isRoamingSyncEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_558

    move v12, v11

    goto :goto_55a

    :cond_54d
    const-string/jumbo v9, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_558

    const/4 v12, 0x3

    goto :goto_55a

    :cond_558
    :goto_558
    move/from16 v12, v17

    :goto_55a
    packed-switch v12, :pswitch_data_2b14

    return-object v13

    :pswitch_55e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isRoamingVoiceCallsEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5e6

    :pswitch_580
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isRoamingDataEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5e6

    :pswitch_5a2
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isRoamingPushEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5e6

    :pswitch_5c4
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isRoamingSyncEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_5e6
    nop

    return-object v7

    :pswitch_5e8
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2b20

    goto/16 :goto_6e2

    :sswitch_5fe
    const-string/jumbo v9, "isScreenCaptureEnabledInternal"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0xd

    goto/16 :goto_6e4

    :sswitch_60b
    const-string/jumbo v9, "isUsbHostStorageAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    move v9, v11

    goto/16 :goto_6e4

    :sswitch_617
    const-string/jumbo v9, "isUsbTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/4 v9, 0x3

    goto/16 :goto_6e4

    :sswitch_623
    const-string/jumbo v9, "isUsbMassStorageEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    move v9, v14

    goto/16 :goto_6e4

    :sswitch_62f
    const-string/jumbo v9, "isWifiTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0xa

    goto/16 :goto_6e4

    :sswitch_63c
    const-string/jumbo v9, "getAllowedFOTAInfo"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    move v9, v10

    goto/16 :goto_6e4

    :sswitch_648
    const-string/jumbo v9, "isGearPolicyEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0xf

    goto/16 :goto_6e4

    :sswitch_655
    const-string/jumbo v9, "isUseSecureKeypadEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    move/from16 v9, v16

    goto/16 :goto_6e4

    :sswitch_662
    const-string/jumbo v9, "isFotaVersionAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0xe

    goto/16 :goto_6e4

    :sswitch_66f
    const-string/jumbo v9, "isSecureStartUpAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0x12

    goto/16 :goto_6e4

    :sswitch_67c
    const-string/jumbo v9, "isSDCardWriteAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0xb

    goto :goto_6e4

    :sswitch_688
    const-string/jumbo v9, "isWifiDirectAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0x9

    goto :goto_6e4

    :sswitch_694
    const-string/jumbo v10, "isUserMobileDataLimitAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e2

    goto :goto_6e4

    :sswitch_69e
    const-string/jumbo v9, "isVpnAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/4 v9, 0x7

    goto :goto_6e4

    :sswitch_6a9
    const-string/jumbo v9, "isWifiEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0xc

    goto :goto_6e4

    :sswitch_6b5
    const-string/jumbo v9, "isVideoRecordAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/4 v9, 0x6

    goto :goto_6e4

    :sswitch_6c0
    const-string/jumbo v9, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    move v9, v15

    goto :goto_6e4

    :sswitch_6cb
    const-string/jumbo v9, "isUsbMediaPlayerAvailable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    move v9, v12

    goto :goto_6e4

    :sswitch_6d6
    const-string/jumbo v9, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    const/16 v9, 0x11

    goto :goto_6e4

    :cond_6e2
    :goto_6e2
    move/from16 v9, v17

    :goto_6e4
    packed-switch v9, :pswitch_data_2b6e

    return-object v13

    :pswitch_6e8
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSecureStartUpAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isSecureStartUpAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_70b
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isPowerSavingModeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    if-nez v9, :cond_a1c

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RESTRICTIONPOLICY_POWERSAVINGMODE_ALLOWED_METHOD cursor return "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1c

    :pswitch_746
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllowedFOTAInfo"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_a1c

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a1c

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_768
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v13, v14, [Ljava/lang/String;

    aput-object v12, v13, v11

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_768

    :pswitch_77c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v12, v14, [Ljava/lang/String;

    aput-object v2, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_79c
    const/4 v9, 0x1

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isFotaVersionAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_7b7
    const/4 v6, 0x0

    if-nez v3, :cond_7c0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_7c6

    :cond_7c0
    aget-object v9, v3, v11

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_7c6
    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v12, v14, [Ljava/lang/String;

    aput-object v2, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_7e1
    const-string/jumbo v9, "wifi_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/wifi/WifiPolicy;

    const/4 v6, 0x0

    if-nez v3, :cond_7f3

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_7f9

    :cond_7f3
    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_7f9
    if-eqz v9, :cond_81e

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v9, v10, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isWifiEnabled"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :cond_81e
    return-object v13

    :pswitch_81f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isSDCardWriteAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_842
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiTetheringEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_865
    const/4 v9, 0x0

    if-eqz v3, :cond_874

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_874

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_874
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isWifiDirectAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_897
    const/4 v9, 0x0

    if-eqz v3, :cond_8a6

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_8a6

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_8a6
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isWallpaperChangeAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_8c9
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isVpnAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_8ec
    const/4 v9, 0x0

    if-eqz v3, :cond_8fb

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_8fb

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_8fb
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isVideoRecordAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_91e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUseSecureKeypadEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_941
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUserMobileDataLimitAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_964
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUsbTetheringEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a1c

    :pswitch_987
    if-eqz v3, :cond_9b8

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_990

    goto :goto_9b8

    :cond_990
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUsbMediaPlayerAvailable"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_a1c

    :cond_9b8
    :goto_9b8
    return-object v13

    :pswitch_9b9
    if-eqz v3, :cond_9ea

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_9c2

    goto :goto_9ea

    :cond_9c2
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUsbMassStorageEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_a1c

    :cond_9ea
    :goto_9ea
    return-object v13

    :pswitch_9eb
    const/4 v9, 0x0

    if-eqz v3, :cond_9fa

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_9fa

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_9fa
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUsbHostStorageAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_a1c
    :goto_a1c
    return-object v7

    :pswitch_a1d
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2b98

    goto/16 :goto_b0a

    :sswitch_a33
    const-string/jumbo v9, "isSVoiceAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    move v9, v10

    goto/16 :goto_b0c

    :sswitch_a3f
    const-string/jumbo v9, "isScreenCaptureEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    move v9, v15

    goto/16 :goto_b0c

    :sswitch_a4b
    const-string/jumbo v9, "isSettingsChangesAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    move v9, v11

    goto/16 :goto_b0c

    :sswitch_a57
    const-string/jumbo v9, "isStatusBarExpansionallowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/16 v9, 0xe

    goto/16 :goto_b0c

    :sswitch_a64
    const-string/jumbo v9, "isSDCardMoveAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/16 v9, 0xa

    goto/16 :goto_b0c

    :sswitch_a71
    const-string/jumbo v9, "isUsbDebuggingEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/16 v9, 0x11

    goto/16 :goto_b0c

    :sswitch_a7e
    const-string/jumbo v9, "isIrisCameraEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/16 v9, 0xc

    goto/16 :goto_b0c

    :sswitch_a8b
    const-string/jumbo v9, "isSafeModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/4 v9, 0x6

    goto/16 :goto_b0c

    :sswitch_a97
    const-string/jumbo v9, "isOdeTrustedBootVerificationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/4 v9, 0x3

    goto/16 :goto_b0c

    :sswitch_aa3
    const-string/jumbo v9, "isSmartClipModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/16 v9, 0xd

    goto :goto_b0c

    :sswitch_aaf
    const-string/jumbo v9, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    move v9, v14

    goto :goto_b0c

    :sswitch_aba
    const-string/jumbo v9, "isSdCardEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/16 v9, 0x9

    goto :goto_b0c

    :sswitch_ac6
    const-string/jumbo v10, "isOTAUpgradeAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b0a

    goto :goto_b0c

    :sswitch_ad0
    const-string/jumbo v9, "isStopSystemAppAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/16 v9, 0xf

    goto :goto_b0c

    :sswitch_adc
    const-string/jumbo v9, "isPowerOffAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    move/from16 v9, v16

    goto :goto_b0c

    :sswitch_ae8
    const-string/jumbo v9, "isScreenPinningAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/16 v9, 0xb

    goto :goto_b0c

    :sswitch_af4
    const-string/jumbo v9, "isSBeamAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    const/4 v9, 0x7

    goto :goto_b0c

    :sswitch_aff
    const-string/jumbo v9, "isShareListAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0a

    move v9, v12

    goto :goto_b0c

    :cond_b0a
    :goto_b0a
    move/from16 v9, v17

    :goto_b0c
    packed-switch v9, :pswitch_data_2be2

    return-object v13

    :pswitch_b10
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUsbDebuggingEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :pswitch_b33
    const/4 v9, 0x0

    move v10, v4

    if-eqz v3, :cond_b44

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ne v13, v14, :cond_b44

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_b58

    :cond_b44
    if-eqz v3, :cond_b58

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ne v13, v12, :cond_b58

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v12, v3, v14

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_b58
    :goto_b58
    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v12, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v12, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v12

    const-string v13, "SecContentProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isSVoiceAllowed result = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " uid = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isSVoiceAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v11, v14

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move v9, v12

    goto/16 :goto_ecc

    :pswitch_b9d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isStopSystemAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :pswitch_bc1
    const/4 v9, 0x0

    if-eqz v3, :cond_bd1

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_bd1

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_bd1
    invoke-virtual {v8, v9, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isStatusBarExpansionallowedAsUser"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_dac

    :pswitch_bf0
    const/4 v9, 0x0

    if-eqz v3, :cond_c00

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_c00

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_c00
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isSmartClipModeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_dac

    :pswitch_c1f
    if-eqz v3, :cond_c53

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_c28

    goto :goto_c53

    :cond_c28
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIrisCameraEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :cond_c53
    :goto_c53
    return-object v13

    :pswitch_c54
    const/4 v9, 0x0

    move v10, v5

    if-eqz v3, :cond_c65

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_c65

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_c65
    if-eqz v3, :cond_c73

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-ne v11, v12, :cond_c73

    aget-object v11, v3, v14

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_c73
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isScreenPinningAllowedAsUser"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move v9, v11

    goto/16 :goto_ecc

    :pswitch_c94
    if-eqz v3, :cond_cc8

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_c9d

    goto :goto_cc8

    :cond_c9d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSDCardMoveAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :cond_cc8
    :goto_cc8
    return-object v13

    :pswitch_cc9
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSdCardEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :pswitch_ced
    if-eqz v3, :cond_d21

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_cf6

    goto :goto_d21

    :cond_cf6
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isScreenCaptureEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :cond_d21
    :goto_d21
    return-object v13

    :pswitch_d22
    const/4 v9, 0x0

    if-eqz v3, :cond_d32

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_d32

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_d32
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isSBeamAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_dac

    :pswitch_d55
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSafeModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :pswitch_d79
    const/4 v9, 0x0

    if-eqz v3, :cond_d89

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_d89

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_d89
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isPowerOffAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_dac
    move v9, v10

    goto/16 :goto_ecc

    :pswitch_daf
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOTAUpgradeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :pswitch_dd2
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOdeTrustedBootVerificationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :pswitch_df6
    move v12, v11

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v14, :cond_e0d

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto :goto_e16

    :cond_e0d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_e16
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isShareListAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ecc

    :pswitch_e31
    if-eqz v3, :cond_e7b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_e3a

    goto :goto_e7b

    :cond_e3a
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSettingsChangesAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_ecc

    :cond_e7b
    :goto_e7b
    return-object v13

    :pswitch_e7c
    if-eqz v3, :cond_ece

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_e85

    goto :goto_ece

    :cond_e85
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_ea2

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto :goto_eb2

    :cond_ea2
    const/4 v10, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_eb2
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSettingsChangesAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_ecc
    nop

    return-object v7

    :cond_ece
    :goto_ece
    return-object v13

    :pswitch_ecf
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2c0a

    goto/16 :goto_fb1

    :sswitch_ee5
    const-string/jumbo v9, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/4 v9, 0x6

    goto/16 :goto_fb3

    :sswitch_ef1
    const-string/jumbo v9, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    move v9, v12

    goto/16 :goto_fb3

    :sswitch_efd
    const-string/jumbo v9, "isNFCEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/16 v9, 0xd

    goto/16 :goto_fb3

    :sswitch_f0a
    const-string/jumbo v9, "isMockLocationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/16 v9, 0xb

    goto/16 :goto_fb3

    :sswitch_f17
    const-string/jumbo v10, "isHeadPhoneEnabled"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fb1

    goto/16 :goto_fb3

    :sswitch_f22
    const-string/jumbo v9, "isHomeKeyEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    move/from16 v9, v16

    goto/16 :goto_fb3

    :sswitch_f2f
    const-string/jumbo v9, "isNonMarketAppAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/16 v9, 0xf

    goto/16 :goto_fb3

    :sswitch_f3c
    const-string/jumbo v9, "isFirmwareRecoveryAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    move v9, v14

    goto/16 :goto_fb3

    :sswitch_f48
    const-string/jumbo v9, "isLockScreenViewAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    move v9, v15

    goto :goto_fb3

    :sswitch_f53
    const-string/jumbo v9, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/4 v9, 0x0

    goto :goto_fb3

    :sswitch_f5e
    const-string/jumbo v9, "isNewAdminInstallationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/16 v9, 0xc

    goto :goto_fb3

    :sswitch_f6a
    const-string/jumbo v9, "isLockScreenEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/4 v9, 0x7

    goto :goto_fb3

    :sswitch_f75
    const-string/jumbo v9, "isMicrophoneEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/16 v9, 0x9

    goto :goto_fb3

    :sswitch_f81
    const-string/jumbo v9, "isMicrophoneEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/16 v9, 0xa

    goto :goto_fb3

    :sswitch_f8d
    const-string/jumbo v9, "isGoogleCrashReportedAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/4 v9, 0x3

    goto :goto_fb3

    :sswitch_f98
    const-string/jumbo v9, "isNonTrustedAppInstallBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    move v9, v10

    goto/16 :goto_fb3

    :sswitch_fa4
    const-string/jumbo v9, "isNFCEnabledWithMsg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb1

    const/16 v9, 0xe

    goto/16 :goto_fb3

    :cond_fb1
    :goto_fb1
    move/from16 v9, v17

    :goto_fb3
    packed-switch v9, :pswitch_data_2c50

    const-string v9, "SecContentProvider"

    const-string/jumbo v10, "return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_fbf
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNonTrustedAppInstallBlocked"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :pswitch_fe3
    const/4 v12, 0x0

    if-eqz v3, :cond_ff7

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    goto/16 :goto_1000

    :cond_ff7
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_1000
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNonMarketAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :pswitch_101b
    if-eqz v3, :cond_102e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1025

    goto/16 :goto_102e

    :cond_1025
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_102f

    :cond_102e
    :goto_102e
    const/4 v6, 0x0

    :goto_102f
    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNFCEnabledWithMsg"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :pswitch_104e
    invoke-virtual {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNFCEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :pswitch_106d
    if-eqz v3, :cond_10a1

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1076

    goto :goto_10a1

    :cond_1076
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNewAdminInstallationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :cond_10a1
    :goto_10a1
    return-object v13

    :pswitch_10a2
    if-nez v3, :cond_10c4

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callingUid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f0

    :cond_10c4
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v9, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v11, "SecContentProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callingUid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v3, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10f0
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMockLocationEnabled return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMockLocationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :pswitch_1122
    if-eqz v3, :cond_116e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_112b

    goto :goto_116e

    :cond_112b
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMicrophoneEnabledAsUser return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMicrophoneEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :cond_116e
    :goto_116e
    return-object v13

    :pswitch_116f
    if-eqz v3, :cond_11d8

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1178

    goto :goto_11d8

    :cond_1178
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_1196

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto/16 :goto_11a6

    :cond_1196
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_11a6
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMicrophoneEnabled return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMicrophoneEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :cond_11d8
    :goto_11d8
    return-object v13

    :pswitch_11d9
    if-eqz v3, :cond_1242

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_11e2

    goto :goto_1242

    :cond_11e2
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_1200

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    goto/16 :goto_1210

    :cond_1200
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    :goto_1210
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isLockScreenViewAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLockScreenViewAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :cond_1242
    :goto_1242
    return-object v13

    :pswitch_1243
    if-eqz v3, :cond_1277

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_124c

    goto :goto_1277

    :cond_124c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLockScreenEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :cond_1277
    :goto_1277
    return-object v13

    :pswitch_1278
    if-nez v3, :cond_12a3

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " callingUid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d9

    :cond_12a3
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " userid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v3, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12d9
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isKillingActivitiesOnLeaveAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :pswitch_12f4
    const/4 v9, 0x0

    if-eqz v3, :cond_1304

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1304

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_1304
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isHomeKeyEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move v9, v10

    goto/16 :goto_1410

    :pswitch_132a
    if-eqz v3, :cond_135f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1334

    goto/16 :goto_135f

    :cond_1334
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isHeadPhoneEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :cond_135f
    :goto_135f
    return-object v13

    :pswitch_1360
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isGoogleCrashReportedAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1410

    :pswitch_1384
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isGoogleAccountsAutoSyncAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1410

    :pswitch_13a7
    if-eqz v3, :cond_13db

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_13b1

    goto/16 :goto_13db

    :cond_13b1
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isFirmwareRecoveryAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1410

    :cond_13db
    :goto_13db
    return-object v13

    :pswitch_13dc
    if-eqz v3, :cond_1412

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_13e6

    goto/16 :goto_1412

    :cond_13e6
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isFirmwareAutoUpdateAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_1410
    nop

    return-object v7

    :cond_1412
    :goto_1412
    return-object v13

    :pswitch_1413
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2c76

    goto/16 :goto_1512

    :sswitch_1429
    const-string v9, "checkPackageSource"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/4 v9, 0x0

    goto/16 :goto_1514

    :sswitch_1434
    const-string/jumbo v9, "isAirplaneModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    move v9, v12

    goto/16 :goto_1514

    :sswitch_1440
    const-string/jumbo v9, "isClipboardShareAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0xe

    goto/16 :goto_1514

    :sswitch_144d
    const-string/jumbo v9, "isFastEncryptionAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0x11

    goto/16 :goto_1514

    :sswitch_145a
    const-string/jumbo v9, "isFactoryResetAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    move v9, v10

    goto/16 :goto_1514

    :sswitch_1466
    const-string/jumbo v9, "isActivationLockAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    move v9, v14

    goto/16 :goto_1514

    :sswitch_1472
    const-string/jumbo v9, "isAndroidBeamAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/4 v9, 0x3

    goto/16 :goto_1514

    :sswitch_147e
    const-string/jumbo v9, "isDeveloperModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0xf

    goto/16 :goto_1514

    :sswitch_148b
    const-string/jumbo v9, "isClipboardShareAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0xd

    goto/16 :goto_1514

    :sswitch_1498
    const-string/jumbo v9, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/4 v9, 0x6

    goto/16 :goto_1514

    :sswitch_14a4
    const-string/jumbo v9, "isCameraEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0x9

    goto :goto_1514

    :sswitch_14b0
    const-string/jumbo v9, "isBackgroundDataEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    move/from16 v9, v16

    goto :goto_1514

    :sswitch_14bc
    const-string/jumbo v9, "isBackupAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/4 v9, 0x7

    goto :goto_1514

    :sswitch_14c7
    const-string/jumbo v10, "isAudioRecordAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1512

    goto/16 :goto_1514

    :sswitch_14d2
    const-string/jumbo v9, "isCellularDataAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0xa

    goto/16 :goto_1514

    :sswitch_14df
    const-string/jumbo v9, "isClipboardAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0xc

    goto/16 :goto_1514

    :sswitch_14ec
    const-string/jumbo v9, "isClipboardAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0xb

    goto/16 :goto_1514

    :sswitch_14f9
    const-string/jumbo v9, "isBluetoothTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    move v9, v15

    goto/16 :goto_1514

    :sswitch_1505
    const-string/jumbo v9, "isDataSavingAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1512

    const/16 v9, 0x12

    goto/16 :goto_1514

    :cond_1512
    :goto_1512
    move/from16 v9, v17

    :goto_1514
    packed-switch v9, :pswitch_data_2cc4

    return-object v13

    :pswitch_1518
    invoke-virtual {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isDataSavingAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_1537
    if-eqz v3, :cond_1540

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1540

    return-object v13

    :cond_1540
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isFastEncryptionAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isFastEncryptionAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_1582
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isFactoryResetAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_15a6
    const/4 v9, 0x0

    if-eqz v3, :cond_15b6

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_15b6

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_15b6
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isDeveloperModeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :pswitch_15d9
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isClipboardShareAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_15fd
    if-eqz v3, :cond_162d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1607

    goto/16 :goto_162d

    :cond_1607
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isClipboardShareAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :cond_162d
    :goto_162d
    return-object v13

    :pswitch_162e
    if-eqz v3, :cond_167a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_1638

    goto/16 :goto_167a

    :cond_1638
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isClipboardAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :cond_167a
    :goto_167a
    return-object v13

    :pswitch_167b
    if-eqz v3, :cond_1697

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1685

    goto/16 :goto_1697

    :cond_1685
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto/16 :goto_16a1

    :cond_1697
    :goto_1697
    const/4 v10, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_16a1
    nop

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isClipboardAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_16bd
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCellularDataAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_16e1
    if-eqz v3, :cond_1716

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_16eb

    goto/16 :goto_1716

    :cond_16eb
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCameraEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :cond_1716
    :goto_1716
    return-object v13

    :pswitch_1717
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBluetoothTetheringEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_173b
    if-eqz v3, :cond_1770

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1745

    goto/16 :goto_1770

    :cond_1745
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBackupAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :cond_1770
    :goto_1770
    return-object v13

    :pswitch_1771
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBackgroundProcessLimitEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_1795
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBackgroundDataEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :pswitch_17b9
    const/4 v9, 0x0

    if-eqz v3, :cond_17c9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_17c9

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_17c9
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isAudioRecordAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_184f

    :pswitch_17ed
    const/4 v9, 0x0

    if-eqz v3, :cond_17fd

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_17fd

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_17fd
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isAndroidBeamAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_184f

    :pswitch_1821
    const/4 v9, 0x0

    if-eqz v3, :cond_1831

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1831

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_1831
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isAirplaneModeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_184f
    move v9, v10

    goto/16 :goto_18b2

    :pswitch_1852
    if-eqz v3, :cond_1887

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_185c

    goto/16 :goto_1887

    :cond_185c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isActivationLockAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18b2

    :cond_1887
    :goto_1887
    return-object v13

    :pswitch_1888
    if-eqz v3, :cond_18b4

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1892

    goto/16 :goto_18b4

    :cond_1892
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "checkPackageSource"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_18b2
    nop

    return-object v7

    :cond_18b4
    :goto_18b4
    return-object v13

    :pswitch_18b5
    const-string/jumbo v8, "password_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2cee

    goto/16 :goto_1951

    :sswitch_18cb
    const-string/jumbo v9, "isBiometricAuthenticationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    const/4 v9, 0x0

    goto/16 :goto_1953

    :sswitch_18d7
    const-string/jumbo v9, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    const/4 v9, 0x6

    goto/16 :goto_1953

    :sswitch_18e3
    const-string/jumbo v10, "isPasswordPatternMatched"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1951

    goto/16 :goto_1953

    :sswitch_18ee
    const-string/jumbo v9, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    move v9, v14

    goto/16 :goto_1953

    :sswitch_18fa
    const-string/jumbo v9, "isChangeRequested"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    move v9, v12

    goto/16 :goto_1953

    :sswitch_1906
    const-string/jumbo v9, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    const/16 v9, 0xa

    goto/16 :goto_1953

    :sswitch_1913
    const-string/jumbo v9, "getPasswordLockDelay"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    const/4 v9, 0x7

    goto/16 :goto_1953

    :sswitch_191f
    const-string/jumbo v9, "getMaximumFailedPasswordsForWipe"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    const/16 v9, 0x9

    goto/16 :goto_1953

    :sswitch_192c
    const-string/jumbo v9, "isPasswordVisibilityEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    move/from16 v9, v16

    goto/16 :goto_1953

    :sswitch_1939
    const-string/jumbo v9, "isExternalStorageForFailedPasswordsWipeExcluded"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    const/4 v9, 0x3

    goto/16 :goto_1953

    :sswitch_1945
    const-string/jumbo v9, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1951

    move v9, v15

    goto/16 :goto_1953

    :cond_1951
    :goto_1951
    move/from16 v9, v17

    :goto_1953
    packed-switch v9, :pswitch_data_2d1c

    return-object v13

    :pswitch_1957
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v11, v14, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :pswitch_1978
    if-eqz v3, :cond_19fb

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1982

    goto/16 :goto_19fb

    :cond_1982
    const/4 v9, 0x0

    aget-object v10, v3, v9

    if-nez v10, :cond_198a

    const/4 v10, 0x0

    goto/16 :goto_1990

    :cond_198a
    aget-object v10, v3, v9

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    :goto_1990
    move-object v9, v10

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-ne v10, v12, :cond_19c1

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v3, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    aget-object v11, v3, v14

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v10

    goto/16 :goto_19ca

    :cond_19c1
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v10

    :goto_19ca
    const-string v11, "SecContentProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getMaximumFailedPasswordsForWipe"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :cond_19fb
    :goto_19fb
    return-object v13

    :pswitch_19fc
    if-eqz v3, :cond_1a28

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v12, v3, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    goto/16 :goto_1a31

    :cond_1a28
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    :goto_1a31
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaximumFailedPasswordsForDisable"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :pswitch_1a62
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getPasswordLockDelay"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :pswitch_1a86
    if-eqz v3, :cond_1acd

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1a90

    goto/16 :goto_1acd

    :cond_1a90
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPasswordVisibilityEnabledAsUser return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isPasswordVisibilityEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :cond_1acd
    :goto_1acd
    return-object v13

    :pswitch_1ace
    if-nez v3, :cond_1af2

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b20

    :cond_1af2
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v3, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b20
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPasswordVisibilityEnabled return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isPasswordVisibilityEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :pswitch_1b52
    if-eqz v3, :cond_1b83

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1b5c

    goto/16 :goto_1b83

    :cond_1b5c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isPasswordPatternMatched"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :cond_1b83
    :goto_1b83
    return-object v13

    :pswitch_1b84
    if-eqz v3, :cond_1bb0

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v12, v3, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    goto/16 :goto_1bb9

    :cond_1bb0
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_1bb9
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isExternalStorageForFailedPasswordsWipeExcluded"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :pswitch_1bea
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isChangeRequested"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :pswitch_1c0e
    if-eqz v3, :cond_1c44

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_1c18

    goto/16 :goto_1c44

    :cond_1c18
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBiometricAuthenticationEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c79

    :cond_1c44
    :goto_1c44
    return-object v13

    :pswitch_1c45
    if-eqz v3, :cond_1c7a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1c4f

    goto/16 :goto_1c7a

    :cond_1c4f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBiometricAuthenticationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_1c79
    return-object v7

    :cond_1c7a
    :goto_1c7a
    return-object v13

    :pswitch_1c7b
    const-string/jumbo v8, "password_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2d36

    goto/16 :goto_1d24

    :sswitch_1c91
    const-string/jumbo v9, "hasMaxRepeatedCharacters"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    const/16 v9, 0xb

    goto/16 :goto_1d26

    :sswitch_1c9e
    const-string/jumbo v9, "hasForbiddenNumericSequence"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    const/16 v9, 0x9

    goto/16 :goto_1d26

    :sswitch_1cab
    const-string/jumbo v9, "hasForbiddenCharacterSequence"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    const/4 v9, 0x7

    goto/16 :goto_1d26

    :sswitch_1cb7
    const-string/jumbo v9, "hasForbiddenData"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    move v9, v15

    goto/16 :goto_1d26

    :sswitch_1cc3
    const-string/jumbo v9, "getPasswordChangeTimeout"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    move/from16 v9, v16

    goto/16 :goto_1d26

    :sswitch_1cd0
    const-string/jumbo v9, "getForbiddenStrings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    const/4 v9, 0x0

    goto/16 :goto_1d26

    :sswitch_1cdc
    const-string/jumbo v9, "getRequiredPwdPatternRestrictions"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    const/4 v9, 0x6

    goto/16 :goto_1d26

    :sswitch_1ce8
    const-string/jumbo v9, "getMaximumCharacterOccurences"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    move v9, v14

    goto/16 :goto_1d26

    :sswitch_1cf4
    const-string/jumbo v9, "hasForbiddenStringDistance"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    const/16 v9, 0xa

    goto/16 :goto_1d26

    :sswitch_1d01
    const-string/jumbo v9, "getMaximumNumericSequenceLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    const/4 v9, 0x3

    goto/16 :goto_1d26

    :sswitch_1d0d
    const-string/jumbo v9, "getMaximumCharacterSequenceLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d24

    move v9, v12

    goto/16 :goto_1d26

    :sswitch_1d19
    const-string/jumbo v10, "getMinimumCharacterChangeLength"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d24

    goto/16 :goto_1d26

    :cond_1d24
    :goto_1d24
    move/from16 v9, v17

    :goto_1d26
    packed-switch v9, :pswitch_data_2d68

    return-object v13

    :pswitch_1d2a
    if-eqz v3, :cond_1d5b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1d34

    goto/16 :goto_1d5b

    :cond_1d34
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasMaxRepeatedCharacters"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :cond_1d5b
    :goto_1d5b
    return-object v13

    :pswitch_1d5c
    if-eqz v3, :cond_1d8f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_1d66

    goto/16 :goto_1d8f

    :cond_1d66
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    aget-object v10, v3, v14

    invoke-virtual {v8, v9, v11, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasForbiddenStringDistance"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :cond_1d8f
    :goto_1d8f
    return-object v13

    :pswitch_1d90
    if-eqz v3, :cond_1dc1

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1d9a

    goto/16 :goto_1dc1

    :cond_1d9a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasForbiddenNumericSequence"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :cond_1dc1
    :goto_1dc1
    return-object v13

    :pswitch_1dc2
    if-eqz v3, :cond_1df3

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1dcc

    goto/16 :goto_1df3

    :cond_1dcc
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasForbiddenData"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :cond_1df3
    :goto_1df3
    return-object v13

    :pswitch_1df4
    if-eqz v3, :cond_1e25

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1dfe

    goto/16 :goto_1e25

    :cond_1dfe
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasForbiddenCharacterSequence"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :cond_1e25
    :goto_1e25
    return-object v13

    :pswitch_1e26
    if-eqz v3, :cond_1e57

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1e30

    goto/16 :goto_1e57

    :cond_1e30
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getRequiredPwdPatternRestrictions"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :cond_1e57
    :goto_1e57
    return-object v13

    :pswitch_1e58
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getPasswordChangeTimeout"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :pswitch_1e7c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMinimumCharacterChangeLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :pswitch_1ea0
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaximumNumericSequenceLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :pswitch_1ec4
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaximumCharacterSequenceLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :pswitch_1ee8
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaximumCharacterOccurences"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f54

    :pswitch_1f0c
    if-eqz v3, :cond_1f55

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1f16

    goto/16 :goto_1f55

    :cond_1f16
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getForbiddenStrings"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_1f54

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f54

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1f3f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f54

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-array v12, v14, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f3f

    :cond_1f54
    :goto_1f54
    return-object v7

    :cond_1f55
    :goto_1f55
    return-object v13

    :pswitch_1f56
    const-string/jumbo v8, "location_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x66608807

    if-eq v9, v10, :cond_1f92

    const v10, -0x40efadf9

    if-eq v9, v10, :cond_1f85

    const v10, 0x63cbc5bc

    if-eq v9, v10, :cond_1f78

    goto/16 :goto_1f9d

    :cond_1f78
    const-string/jumbo v9, "isLocationProviderBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f9d

    const/16 v17, 0x0

    goto/16 :goto_1f9d

    :cond_1f85
    const-string/jumbo v9, "isGPSStateChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f9d

    move/from16 v17, v12

    goto/16 :goto_1f9d

    :cond_1f92
    const-string/jumbo v9, "isLocationProviderBlockedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f9d

    move/from16 v17, v14

    :cond_1f9d
    :goto_1f9d
    packed-switch v17, :pswitch_data_2d84

    return-object v13

    :pswitch_1fa1
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isGPSStateChangeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2055

    :pswitch_1fc5
    if-eqz v3, :cond_2029

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1fcf

    goto/16 :goto_2029

    :cond_1fcf
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_2007

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_1ffe

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isLocationProviderBlockedAsUser using userId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " instead of UserHandle.USER_CURRENT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ffe
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v11, v9}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v9

    goto/16 :goto_200e

    :cond_2007
    const/4 v10, 0x0

    aget-object v9, v3, v10

    invoke-virtual {v8, v9, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v9

    :goto_200e
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLocationProviderBlockedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2055

    :cond_2029
    :goto_2029
    return-object v13

    :pswitch_202a
    if-eqz v3, :cond_2057

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2034

    goto/16 :goto_2057

    :cond_2034
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLocationProviderBlocked"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_2055
    nop

    return-object v7

    :cond_2057
    :goto_2057
    return-object v13

    :pswitch_2058
    goto/16 :goto_2a8d

    :pswitch_205a
    const-string v8, "browser_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/browser/BrowserPolicy;

    const-string/jumbo v10, "misc_policy"

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    if-eqz v10, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2d8e

    goto/16 :goto_20b5

    :sswitch_207a
    const-string/jumbo v9, "getURLFilterReportEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20b5

    move v9, v12

    goto/16 :goto_20b7

    :sswitch_2086
    const-string/jumbo v9, "isUrlBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20b5

    const/4 v9, 0x3

    goto/16 :goto_20b7

    :sswitch_2092
    const-string/jumbo v9, "getURLFilterEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20b5

    const/4 v9, 0x0

    goto/16 :goto_20b7

    :sswitch_209e
    const-string/jumbo v11, "isGlobalProxyAllowed"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20b5

    goto/16 :goto_20b7

    :sswitch_20a9
    const-string/jumbo v9, "getURLFilterList"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20b5

    move v9, v14

    goto/16 :goto_20b7

    :cond_20b5
    :goto_20b5
    move/from16 v9, v17

    :goto_20b7
    packed-switch v9, :pswitch_data_2da4

    return-object v13

    :pswitch_20bb
    invoke-virtual {v10}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isGlobalProxyAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_218a

    :pswitch_20da
    if-eqz v3, :cond_210a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_20e4

    goto/16 :goto_210a

    :cond_20e4
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v3, v11

    invoke-virtual {v8, v9, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUrlBlocked"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    aput-object v9, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_218a

    :cond_210a
    :goto_210a
    return-object v13

    :pswitch_210b
    const/4 v11, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v14, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "getURLFilterReportEnabled"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    aput-object v9, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_218a

    :pswitch_212f
    const/4 v11, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v14, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v9

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getURLFilterList"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    if-eqz v9, :cond_218a

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_218a

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2152
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_218a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v13, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v13, v15

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2152

    :pswitch_2167
    const/4 v15, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v14, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v9

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getURLFilterEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_218a
    :goto_218a
    return-object v7

    :pswitch_218b
    goto/16 :goto_2a8d

    :pswitch_218d
    goto/16 :goto_2a8d

    :pswitch_218f
    goto/16 :goto_2a8d

    :pswitch_2191
    const-string v8, "certificate_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v8, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2db2

    goto/16 :goto_222c

    :sswitch_21a6
    const-string/jumbo v9, "isRevocationCheckEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    const/4 v9, 0x6

    goto/16 :goto_222e

    :sswitch_21b2
    const-string/jumbo v9, "validateChainAtInstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    const/16 v9, 0xa

    goto/16 :goto_222e

    :sswitch_21bf
    const-string/jumbo v9, "notifyCertificateFailure"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    move/from16 v9, v16

    goto/16 :goto_222e

    :sswitch_21cc
    const-string/jumbo v9, "isSignatureIdentityInformationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    const/4 v9, 0x3

    goto/16 :goto_222e

    :sswitch_21d8
    const-string/jumbo v9, "isCaCertificateDisabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    move v9, v14

    goto/16 :goto_222e

    :sswitch_21e4
    const-string/jumbo v10, "getIdentitiesFromSignatures"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_222c

    goto/16 :goto_222e

    :sswitch_21ef
    const-string/jumbo v9, "isCaCertificateTrustedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    const/4 v9, 0x0

    goto/16 :goto_222e

    :sswitch_21fb
    const-string/jumbo v9, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    move v9, v12

    goto/16 :goto_222e

    :sswitch_2207
    const-string/jumbo v9, "isOcspCheckEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    const/4 v9, 0x7

    goto/16 :goto_222e

    :sswitch_2213
    const-string/jumbo v9, "validateCertificateAtInstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    const/16 v9, 0x9

    goto/16 :goto_222e

    :sswitch_2220
    const-string/jumbo v9, "isCertificateValidationAtInstallEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222c

    move v9, v15

    goto/16 :goto_222e

    :cond_222c
    :goto_222c
    move/from16 v9, v17

    :goto_222e
    packed-switch v9, :pswitch_data_2de0

    goto/16 :goto_246e

    :pswitch_2233
    if-eqz v3, :cond_2265

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_223d

    goto/16 :goto_2265

    :cond_223d
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "validateChainAtInstall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :cond_2265
    :goto_2265
    return-object v13

    :pswitch_2266
    if-eqz v3, :cond_2298

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2270

    goto/16 :goto_2298

    :cond_2270
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "validateCertificateAtInstall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :cond_2298
    :goto_2298
    return-object v13

    :pswitch_2299
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCertificateValidationAtInstallEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :pswitch_22bd
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOcspCheckEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :pswitch_22e1
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isRevocationCheckEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :pswitch_2305
    if-eqz v3, :cond_2320

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v12, :cond_230f

    goto/16 :goto_2320

    :cond_230f
    const/4 v9, 0x0

    aget-object v9, v3, v9

    aget-object v10, v3, v14

    aget-object v11, v3, v12

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    goto/16 :goto_246e

    :cond_2320
    :goto_2320
    return-object v13

    :pswitch_2321
    if-eqz v3, :cond_237a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_232b

    goto/16 :goto_237a

    :cond_232b
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/pm/Signature;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getIdentitiesFromSignatures"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_246e

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_246e

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2356
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_246e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_2364
    if-ge v13, v12, :cond_2376

    aget-object v15, v11, v13

    new-array v1, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v1, v16

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_2364

    :cond_2376
    nop

    move-object/from16 v1, p1

    goto :goto_2356

    :cond_237a
    :goto_237a
    return-object v13

    :pswitch_237b
    if-eqz v3, :cond_23b0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2385

    goto/16 :goto_23b0

    :cond_2385
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isSignatureIdentityInformationEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :cond_23b0
    :goto_23b0
    return-object v13

    :pswitch_23b1
    if-eqz v3, :cond_23b9

    array-length v1, v3

    if-ne v1, v14, :cond_23b9

    move v1, v14

    goto/16 :goto_23ba

    :cond_23b9
    const/4 v1, 0x0

    :goto_23ba
    if-eqz v1, :cond_23ca

    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    nop

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v9

    goto/16 :goto_23d3

    :cond_23ca
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_23d3
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isUserRemoveCertificatesAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :pswitch_23ee
    if-eqz v3, :cond_2427

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_23f8

    goto/16 :goto_2427

    :cond_23f8
    move v1, v5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-le v9, v14, :cond_2405

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_2405
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v10, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCaCertificateDisabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :cond_2427
    :goto_2427
    return-object v13

    :pswitch_2428
    if-eqz v3, :cond_246d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gt v1, v14, :cond_2432

    goto/16 :goto_246d

    :cond_2432
    move v1, v5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_243f

    aget-object v9, v3, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_243f
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/keystore/CertificateInfo;

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCaCertificateTrustedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_246e

    :cond_246d
    :goto_246d
    return-object v13

    :cond_246e
    :goto_246e
    return-object v7

    :pswitch_246f
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v1, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2dfa

    goto/16 :goto_24d0

    :sswitch_2484
    const-string/jumbo v8, "getCookiesSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d0

    move/from16 v16, v12

    goto/16 :goto_24d2

    :sswitch_2491
    const-string/jumbo v8, "getHttpProxy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d0

    const/16 v16, 0x0

    goto/16 :goto_24d2

    :sswitch_249e
    const-string/jumbo v8, "getJavaScriptSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d0

    const/16 v16, 0x3

    goto/16 :goto_24d2

    :sswitch_24ab
    const-string/jumbo v8, "getAutoFillSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d0

    move/from16 v16, v14

    goto/16 :goto_24d2

    :sswitch_24b8
    const-string/jumbo v8, "getPopupsSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d0

    move/from16 v16, v9

    goto/16 :goto_24d2

    :sswitch_24c5
    const-string/jumbo v8, "getForceFraudWarningSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d0

    goto/16 :goto_24d2

    :cond_24d0
    :goto_24d0
    move/from16 v16, v17

    :goto_24d2
    packed-switch v16, :pswitch_data_2e14

    return-object v13

    :pswitch_24d6
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getForceFraudWarningSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25a9

    :pswitch_24fa
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v14}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getPopupsSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25a9

    :pswitch_251e
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v10}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getJavaScriptSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25a9

    :pswitch_2542
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getCookiesSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25a9

    :pswitch_2566
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v9}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoFillSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25a9

    :pswitch_258a
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getHttpProxy"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_25a9
    return-object v7

    :pswitch_25aa
    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2e24

    goto/16 :goto_262a

    :sswitch_25b5
    const-string v1, "bluetoothLogForRemote"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    move v9, v15

    goto/16 :goto_262c

    :sswitch_25c0
    const-string v1, "bluetoothLogForDevice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    const/16 v9, 0x9

    goto/16 :goto_262c

    :sswitch_25cc
    const-string/jumbo v1, "isSocketAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    goto/16 :goto_262c

    :sswitch_25d7
    const-string/jumbo v1, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    const/4 v9, 0x6

    goto/16 :goto_262c

    :sswitch_25e3
    const-string v1, "bluetoothSocketLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    move/from16 v9, v16

    goto/16 :goto_262c

    :sswitch_25ef
    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    move v9, v12

    goto/16 :goto_262c

    :sswitch_25fb
    const-string/jumbo v1, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    const/4 v9, 0x3

    goto/16 :goto_262c

    :sswitch_2607
    const-string/jumbo v1, "isBluetoothLogEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    move v9, v14

    goto/16 :goto_262c

    :sswitch_2613
    const-string v1, "bluetoothLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    const/4 v9, 0x7

    goto/16 :goto_262c

    :sswitch_261e
    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262a

    const/4 v9, 0x0

    goto/16 :goto_262c

    :cond_262a
    :goto_262a
    move/from16 v9, v17

    :goto_262c
    packed-switch v9, :pswitch_data_2e4e

    goto/16 :goto_2811

    :pswitch_2631
    if-eqz v3, :cond_266c

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-lt v1, v8, :cond_266c

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_2642

    goto/16 :goto_266c

    :cond_2642
    aget-object v1, v3, v12

    if-nez v1, :cond_2654

    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1, v8, v13}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_2811

    :cond_2654
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    aget-object v10, v3, v12

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-static {v1, v8, v9}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_2811

    :cond_266c
    :goto_266c
    return-object v13

    :pswitch_266d
    if-eqz v3, :cond_268a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-lt v1, v8, :cond_268a

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_267e

    goto/16 :goto_268a

    :cond_267e
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    aget-object v9, v3, v12

    invoke-static {v1, v8, v9}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2811

    :cond_268a
    :goto_268a
    return-object v13

    :pswitch_268b
    if-eqz v3, :cond_26a5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lt v1, v12, :cond_26a5

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_269b

    goto/16 :goto_26a5

    :cond_269b
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    invoke-static {v1, v8}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2811

    :cond_26a5
    :goto_26a5
    return-object v13

    :pswitch_26a6
    if-eqz v3, :cond_26d6

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_26b0

    goto/16 :goto_26d6

    :cond_26b0
    const/4 v1, 0x0

    aget-object v8, v3, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2811

    :cond_26d6
    :goto_26d6
    return-object v13

    :pswitch_26d7
    if-eqz v3, :cond_2700

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-ge v1, v8, :cond_26e2

    goto/16 :goto_2700

    :cond_26e2
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    aget-object v10, v3, v14

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1, v9, v10, v8}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_2811

    :cond_2700
    :goto_2700
    return-object v13

    :pswitch_2701
    if-eqz v3, :cond_2748

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-ge v1, v8, :cond_270c

    goto/16 :goto_2748

    :cond_270c
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v8, v3, v8

    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v8

    invoke-static {v1, v9, v10, v8}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isSocketAllowedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2811

    :cond_2748
    :goto_2748
    return-object v13

    :pswitch_2749
    if-eqz v3, :cond_277d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2753

    goto/16 :goto_277d

    :cond_2753
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isHeadsetAllowedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2811

    :cond_277d
    :goto_277d
    return-object v13

    :pswitch_277e
    if-eqz v3, :cond_27c0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2788

    goto/16 :goto_27c0

    :cond_2788
    const/4 v1, 0x0

    aget-object v8, v3, v1

    invoke-static {v8}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v1

    const-string v8, "SecContentProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PAIRINGALLOWEDBYSECURITY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isPairingAllowedbySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2811

    :cond_27c0
    :goto_27c0
    return-object v13

    :pswitch_27c1
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isBluetoothLogEnabled"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2811

    :pswitch_27e0
    if-eqz v3, :cond_2810

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_27ea

    goto/16 :goto_2810

    :cond_27ea
    const/4 v1, 0x0

    aget-object v8, v3, v1

    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isProfileAuthorizedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2811

    :cond_2810
    :goto_2810
    return-object v13

    :goto_2811
    return-object v7

    :pswitch_2812
    const/4 v8, 0x3

    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v1, :cond_2a8d

    if-eqz v2, :cond_2a8d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2e66

    goto/16 :goto_2893

    :sswitch_2828
    const-string/jumbo v8, "isOutgoingCallsAllowed"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2893

    move v8, v12

    goto/16 :goto_2895

    :sswitch_2834
    const-string/jumbo v9, "isLimitedDiscoverableEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2893

    goto/16 :goto_2895

    :sswitch_283f
    const-string/jumbo v8, "isBLEAllowed"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2893

    move v8, v15

    goto/16 :goto_2895

    :sswitch_284b
    const-string/jumbo v8, "isDiscoverableEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2893

    move v8, v9

    goto/16 :goto_2895

    :sswitch_2857
    const-string/jumbo v8, "isDesktopConnectivityEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2893

    move/from16 v8, v16

    goto/16 :goto_2895

    :sswitch_2864
    const-string/jumbo v8, "isBluetoothLogEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2893

    const/4 v8, 0x7

    goto/16 :goto_2895

    :sswitch_2870
    const-string v8, "bluetoothLog"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2893

    const/4 v8, 0x6

    goto/16 :goto_2895

    :sswitch_287b
    const-string/jumbo v8, "isBluetoothEnabledWithMsg"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2893

    move v8, v14

    goto/16 :goto_2895

    :sswitch_2887
    const-string/jumbo v8, "isBluetoothEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2893

    const/4 v8, 0x0

    goto/16 :goto_2895

    :cond_2893
    :goto_2893
    move/from16 v8, v17

    :goto_2895
    packed-switch v8, :pswitch_data_2e8c

    return-object v13

    :pswitch_2899
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isBLEAllowed"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a57

    :pswitch_28bd
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isBluetoothLogEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a57

    :pswitch_28e1
    if-eqz v3, :cond_2913

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-ge v8, v12, :cond_28eb

    goto/16 :goto_2913

    :cond_28eb
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v9, 0x0

    aget-object v10, v3, v9

    aget-object v9, v3, v14

    invoke-virtual {v1, v8, v10, v9}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v10, "bluetoothLog"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a57

    :cond_2913
    :goto_2913
    return-object v13

    :pswitch_2914
    if-eqz v3, :cond_2944

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_291e

    goto/16 :goto_2944

    :cond_291e
    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isDesktopConnectivityEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a57

    :cond_2944
    :goto_2944
    return-object v13

    :pswitch_2945
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isDiscoverableEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a57

    :pswitch_2969
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isLimitedDiscoverableEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a57

    :pswitch_298d
    if-eqz v3, :cond_29d4

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_2997

    goto/16 :goto_29d4

    :cond_2997
    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v8

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isOutgoingCallsAllowed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isOutgoingCallsAllowed"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a57

    :cond_29d4
    :goto_29d4
    return-object v13

    :pswitch_29d5
    if-eqz v3, :cond_2a1c

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_29df

    goto/16 :goto_2a1c

    :cond_29df
    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v8

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isBluetoothEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isBluetoothEnabledWithMsg"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a57

    :cond_2a1c
    :goto_2a1c
    return-object v13

    :pswitch_2a1d
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isBluetoothEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isBluetoothEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_2a57
    nop

    return-object v7

    :pswitch_2a59
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_2a8d

    if-eqz v2, :cond_2a8d

    const-string/jumbo v8, "isAuditLogEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a8d

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isAuditLogEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :pswitch_2a8c
    nop

    :cond_2a8d
    :goto_2a8d
    return-object v13

    nop

    nop

    :pswitch_data_2a90
    .packed-switch 0x1
        :pswitch_2a8c
        :pswitch_2a59
        :pswitch_2812
        :pswitch_25aa
        :pswitch_246f
        :pswitch_2191
        :pswitch_218f
        :pswitch_218d
        :pswitch_218b
        :pswitch_205a
        :pswitch_2058
        :pswitch_1f56
        :pswitch_1c7b
        :pswitch_18b5
        :pswitch_1413
        :pswitch_ecf
        :pswitch_a1d
        :pswitch_5e8
        :pswitch_507
        :pswitch_477
        :pswitch_475
        :pswitch_402
        :pswitch_39c
        :pswitch_320
        :pswitch_67
        :pswitch_286
        :pswitch_1e1
        :pswitch_19a
        :pswitch_ba
        :pswitch_69
    .end packed-switch

    :sswitch_data_2ad0
    .sparse-switch
        -0x35a747d7 -> :sswitch_fa
        0x1020174d -> :sswitch_ef
        0x1220385a -> :sswitch_e5
        0x4f30b64f -> :sswitch_da
        0x78c697e8 -> :sswitch_cf
    .end sparse-switch

    :pswitch_data_2ae6
    .packed-switch 0x0
        :pswitch_17c
        :pswitch_15f
        :pswitch_142
        :pswitch_125
        :pswitch_10b
    .end packed-switch

    :pswitch_data_2af4
    .packed-switch 0x0
        :pswitch_248
        :pswitch_214
    .end packed-switch

    :pswitch_data_2afc
    .packed-switch 0x0
        :pswitch_2ed
        :pswitch_2bc
    .end packed-switch

    :pswitch_data_2b04
    .packed-switch 0x0
        :pswitch_378
        :pswitch_356
    .end packed-switch

    :pswitch_data_2b0c
    .packed-switch 0x0
        :pswitch_4e4
        :pswitch_4ae
    .end packed-switch

    :pswitch_data_2b14
    .packed-switch 0x0
        :pswitch_5c4
        :pswitch_5a2
        :pswitch_580
        :pswitch_55e
    .end packed-switch

    :sswitch_data_2b20
    .sparse-switch
        -0x6a3a5990 -> :sswitch_6d6
        -0x562f9482 -> :sswitch_6cb
        -0x4e3d6d40 -> :sswitch_6c0
        -0x460411da -> :sswitch_6b5
        -0x39b5211e -> :sswitch_6a9
        -0x37226d22 -> :sswitch_69e
        -0x3581de92 -> :sswitch_694
        -0x30c133a0 -> :sswitch_688
        -0x28516cec -> :sswitch_67c
        -0x12538c14 -> :sswitch_66f
        -0x9cfa0f0 -> :sswitch_662
        -0x4e1daa7 -> :sswitch_655
        -0x4445baa -> :sswitch_648
        -0xebe1ca -> :sswitch_63c
        0x12bbc810 -> :sswitch_62f
        0x5f1771f4 -> :sswitch_623
        0x730fdeab -> :sswitch_617
        0x75020c0f -> :sswitch_60b
        0x788dd2ce -> :sswitch_5fe
    .end sparse-switch

    :pswitch_data_2b6e
    .packed-switch 0x0
        :pswitch_9eb
        :pswitch_9b9
        :pswitch_987
        :pswitch_964
        :pswitch_941
        :pswitch_91e
        :pswitch_8ec
        :pswitch_8c9
        :pswitch_897
        :pswitch_865
        :pswitch_842
        :pswitch_81f
        :pswitch_7e1
        :pswitch_7b7
        :pswitch_79c
        :pswitch_77c
        :pswitch_746
        :pswitch_70b
        :pswitch_6e8
    .end packed-switch

    :sswitch_data_2b98
    .sparse-switch
        -0x6c43a0eb -> :sswitch_aff
        -0x5eef4930 -> :sswitch_af4
        -0x57f5d70e -> :sswitch_ae8
        -0x55af2a6c -> :sswitch_adc
        -0x42b9a7be -> :sswitch_ad0
        -0x3d0295e2 -> :sswitch_ac6
        -0x331a660a -> :sswitch_aba
        -0x2873ac11 -> :sswitch_aaf
        -0x1ad99baa -> :sswitch_aa3
        -0x10b8615d -> :sswitch_a97
        -0x53b1dd2 -> :sswitch_a8b
        0x21990efc -> :sswitch_a7e
        0x3e90c48d -> :sswitch_a71
        0x405a90ec -> :sswitch_a64
        0x53ef861d -> :sswitch_a57
        0x5bb25232 -> :sswitch_a4b
        0x6bef28f1 -> :sswitch_a3f
        0x7c45f31f -> :sswitch_a33
    .end sparse-switch

    :pswitch_data_2be2
    .packed-switch 0x0
        :pswitch_e7c
        :pswitch_e31
        :pswitch_df6
        :pswitch_dd2
        :pswitch_daf
        :pswitch_d79
        :pswitch_d55
        :pswitch_d22
        :pswitch_ced
        :pswitch_cc9
        :pswitch_c94
        :pswitch_c54
        :pswitch_c1f
        :pswitch_bf0
        :pswitch_bc1
        :pswitch_b9d
        :pswitch_b33
        :pswitch_b10
    .end packed-switch

    :sswitch_data_2c0a
    .sparse-switch
        -0x74a4d725 -> :sswitch_fa4
        -0x71206782 -> :sswitch_f98
        -0x6c0db8af -> :sswitch_f8d
        -0x694bd3d6 -> :sswitch_f81
        -0x553c4d53 -> :sswitch_f75
        -0x4d525a40 -> :sswitch_f6a
        -0x4406e5f2 -> :sswitch_f5e
        -0x39e13355 -> :sswitch_f53
        -0x2de531be -> :sswitch_f48
        -0x1ab59b72 -> :sswitch_f3c
        -0xa2586fa -> :sswitch_f2f
        0x5ad79eb -> :sswitch_f22
        0x5be9d3d -> :sswitch_f17
        0x26581d58 -> :sswitch_f0a
        0x36e6d3e0 -> :sswitch_efd
        0x4bd14915 -> :sswitch_ef1
        0x6c3b6517 -> :sswitch_ee5
    .end sparse-switch

    :pswitch_data_2c50
    .packed-switch 0x0
        :pswitch_13dc
        :pswitch_13a7
        :pswitch_1384
        :pswitch_1360
        :pswitch_132a
        :pswitch_12f4
        :pswitch_1278
        :pswitch_1243
        :pswitch_11d9
        :pswitch_116f
        :pswitch_1122
        :pswitch_10a2
        :pswitch_106d
        :pswitch_104e
        :pswitch_101b
        :pswitch_fe3
        :pswitch_fbf
    .end packed-switch

    :sswitch_data_2c76
    .sparse-switch
        -0x657fd646 -> :sswitch_1505
        -0x5d9fe8ab -> :sswitch_14f9
        -0x5c7edb84 -> :sswitch_14ec
        -0x4bfd3947 -> :sswitch_14df
        -0x38cefab6 -> :sswitch_14d2
        -0x36978d55 -> :sswitch_14c7
        -0x34742384 -> :sswitch_14bc
        -0x2d47f4e1 -> :sswitch_14b0
        -0x2b582cae -> :sswitch_14a4
        0x3e05fd -> :sswitch_1498
        0x7ed85f2 -> :sswitch_148b
        0x2ea4b8a5 -> :sswitch_147e
        0x3593cbd4 -> :sswitch_1472
        0x3d337bfd -> :sswitch_1466
        0x4ef9c1f9 -> :sswitch_145a
        0x64034c9f -> :sswitch_144d
        0x71560275 -> :sswitch_1440
        0x77163a49 -> :sswitch_1434
        0x7e3d73d9 -> :sswitch_1429
    .end sparse-switch

    :pswitch_data_2cc4
    .packed-switch 0x0
        :pswitch_1888
        :pswitch_1852
        :pswitch_1821
        :pswitch_17ed
        :pswitch_17b9
        :pswitch_1795
        :pswitch_1771
        :pswitch_173b
        :pswitch_1717
        :pswitch_16e1
        :pswitch_16bd
        :pswitch_167b
        :pswitch_162e
        :pswitch_15fd
        :pswitch_15d9
        :pswitch_15a6
        :pswitch_1582
        :pswitch_1537
        :pswitch_1518
    .end packed-switch

    :sswitch_data_2cee
    .sparse-switch
        -0x4e857510 -> :sswitch_1945
        -0x1c894ef7 -> :sswitch_1939
        -0xe2e3396 -> :sswitch_192c
        -0x9b47ac1 -> :sswitch_191f
        0x17f43207 -> :sswitch_1913
        0x234b9a81 -> :sswitch_1906
        0x48803b14 -> :sswitch_18fa
        0x4e20b298 -> :sswitch_18ee
        0x60a98cb9 -> :sswitch_18e3
        0x65054427 -> :sswitch_18d7
        0x75f9239b -> :sswitch_18cb
    .end sparse-switch

    :pswitch_data_2d1c
    .packed-switch 0x0
        :pswitch_1c45
        :pswitch_1c0e
        :pswitch_1bea
        :pswitch_1b84
        :pswitch_1b52
        :pswitch_1ace
        :pswitch_1a86
        :pswitch_1a62
        :pswitch_19fc
        :pswitch_1978
        :pswitch_1957
    .end packed-switch

    :sswitch_data_2d36
    .sparse-switch
        -0x7f91d479 -> :sswitch_1d19
        -0x7c284bba -> :sswitch_1d0d
        -0x6f335556 -> :sswitch_1d01
        -0x4cb7d87b -> :sswitch_1cf4
        -0x2d0cb7a5 -> :sswitch_1ce8
        0xdc5fecf -> :sswitch_1cdc
        0x33b94bbf -> :sswitch_1cd0
        0x367ce700 -> :sswitch_1cc3
        0x465482c9 -> :sswitch_1cb7
        0x552e154b -> :sswitch_1cab
        0x69712d6f -> :sswitch_1c9e
        0x6ab4c78e -> :sswitch_1c91
    .end sparse-switch

    :pswitch_data_2d68
    .packed-switch 0x0
        :pswitch_1f0c
        :pswitch_1ee8
        :pswitch_1ec4
        :pswitch_1ea0
        :pswitch_1e7c
        :pswitch_1e58
        :pswitch_1e26
        :pswitch_1df4
        :pswitch_1dc2
        :pswitch_1d90
        :pswitch_1d5c
        :pswitch_1d2a
    .end packed-switch

    :pswitch_data_2d84
    .packed-switch 0x0
        :pswitch_202a
        :pswitch_1fc5
        :pswitch_1fa1
    .end packed-switch

    :sswitch_data_2d8e
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_20a9
        -0x3ecb9a99 -> :sswitch_209e
        0x3ba3e2f0 -> :sswitch_2092
        0x62658647 -> :sswitch_2086
        0x6f38e3dc -> :sswitch_207a
    .end sparse-switch

    :pswitch_data_2da4
    .packed-switch 0x0
        :pswitch_2167
        :pswitch_212f
        :pswitch_210b
        :pswitch_20da
        :pswitch_20bb
    .end packed-switch

    :sswitch_data_2db2
    .sparse-switch
        -0x7f682541 -> :sswitch_2220
        -0x6f783fb9 -> :sswitch_2213
        -0x51cc33cc -> :sswitch_2207
        -0x4d8cc16d -> :sswitch_21fb
        -0x3d0bb61b -> :sswitch_21ef
        -0x3c6ca389 -> :sswitch_21e4
        -0x3c036018 -> :sswitch_21d8
        -0x3bc628df -> :sswitch_21cc
        -0x374aace4 -> :sswitch_21bf
        0x6305badd -> :sswitch_21b2
        0x692685a1 -> :sswitch_21a6
    .end sparse-switch

    :pswitch_data_2de0
    .packed-switch 0x0
        :pswitch_2428
        :pswitch_23ee
        :pswitch_23b1
        :pswitch_237b
        :pswitch_2321
        :pswitch_2305
        :pswitch_22e1
        :pswitch_22bd
        :pswitch_2299
        :pswitch_2266
        :pswitch_2233
    .end packed-switch

    :sswitch_data_2dfa
    .sparse-switch
        -0x74ddc0dd -> :sswitch_24c5
        -0x67f870ad -> :sswitch_24b8
        -0x499a7018 -> :sswitch_24ab
        -0x364e80b3 -> :sswitch_249e
        0x9515810 -> :sswitch_2491
        0x78a801b7 -> :sswitch_2484
    .end sparse-switch

    :pswitch_data_2e14
    .packed-switch 0x0
        :pswitch_258a
        :pswitch_2566
        :pswitch_2542
        :pswitch_251e
        :pswitch_24fa
        :pswitch_24d6
    .end packed-switch

    :sswitch_data_2e24
    .sparse-switch
        -0x74fa9afd -> :sswitch_261e
        -0x5319be4a -> :sswitch_2613
        -0x4ebf90df -> :sswitch_2607
        -0x3ce44687 -> :sswitch_25fb
        -0x3a6a65ad -> :sswitch_25ef
        -0x103e8c3d -> :sswitch_25e3
        0x292f3f94 -> :sswitch_25d7
        0x2eef3494 -> :sswitch_25cc
        0x65788769 -> :sswitch_25c0
        0x7d586159 -> :sswitch_25b5
    .end sparse-switch

    :pswitch_data_2e4e
    .packed-switch 0x0
        :pswitch_27e0
        :pswitch_27c1
        :pswitch_277e
        :pswitch_2749
        :pswitch_2701
        :pswitch_26d7
        :pswitch_26a6
        :pswitch_268b
        :pswitch_266d
        :pswitch_2631
    .end packed-switch

    :sswitch_data_2e66
    .sparse-switch
        -0x625ba203 -> :sswitch_2887
        -0x534f8be2 -> :sswitch_287b
        -0x5319be4a -> :sswitch_2870
        -0x4ebf90df -> :sswitch_2864
        -0x11927f68 -> :sswitch_2857
        0x52d2774 -> :sswitch_284b
        0x3670f097 -> :sswitch_283f
        0x3962d1ce -> :sswitch_2834
        0x6422cbe9 -> :sswitch_2828
    .end sparse-switch

    :pswitch_data_2e8c
    .packed-switch 0x0
        :pswitch_2a1d
        :pswitch_29d5
        :pswitch_298d
        :pswitch_2969
        :pswitch_2945
        :pswitch_2914
        :pswitch_28e1
        :pswitch_28bd
        :pswitch_2899
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
