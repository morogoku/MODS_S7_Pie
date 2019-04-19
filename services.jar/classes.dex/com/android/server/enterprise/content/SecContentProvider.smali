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

    packed-switch v8, :pswitch_data_2a5c

    :pswitch_67
    goto/16 :goto_2a5a

    :pswitch_69
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

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
    const-string v8, "dex_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/dex/DexPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2a9c

    goto :goto_104

    :sswitch_ce
    const-string/jumbo v9, "isVirtualMacAddressEnforced"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_104

    const/4 v9, 0x3

    goto :goto_106

    :sswitch_d9
    const-string/jumbo v9, "isEthernetOnlyEnforced"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_104

    move v9, v12

    goto :goto_106

    :sswitch_e4
    const-string/jumbo v10, "getVirtualMacAddress"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_104

    goto :goto_106

    :sswitch_ee
    const-string/jumbo v9, "isScreenTimeoutChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_104

    move v9, v11

    goto :goto_106

    :sswitch_f9
    const-string/jumbo v9, "isDexDisabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_104

    move v9, v14

    goto :goto_106

    :cond_104
    :goto_104
    move/from16 v9, v17

    :goto_106
    packed-switch v9, :pswitch_data_2ab2

    return-object v13

    :pswitch_10a
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

    goto/16 :goto_198

    :pswitch_124
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

    goto :goto_198

    :pswitch_141
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

    goto :goto_198

    :pswitch_15e
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

    goto :goto_198

    :pswitch_17b
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

    :goto_198
    return-object v7

    :pswitch_199
    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x1371088

    if-eq v8, v9, :cond_1a5

    goto :goto_1b0

    :cond_1a5
    const-string/jumbo v8, "getDefaultCaptivePortalUrl"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b0

    move/from16 v17, v11

    :cond_1b0
    :goto_1b0
    if-eqz v17, :cond_1b3

    goto :goto_1df

    :cond_1b3
    const-string v8, "SecContentProvider"

    const-string/jumbo v9, "getDefaultCaptivePortalUrl"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "firewall"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v9, 0x0

    if-eqz v8, :cond_1cb

    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v9

    :cond_1cb
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getDefaultCaptivePortalUrl"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1df
    return-object v7

    :pswitch_1e0
    if-eqz v2, :cond_27c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x1d831fed

    if-eq v8, v9, :cond_1fd

    const v9, 0x67e79726

    if-eq v8, v9, :cond_1f1

    goto :goto_208

    :cond_1f1
    const-string/jumbo v8, "isAllowedToShare"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_208

    move/from16 v17, v11

    goto :goto_208

    :cond_1fd
    const-string/jumbo v8, "isDLPActivated"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_208

    move/from16 v17, v14

    :cond_208
    :goto_208
    packed-switch v17, :pswitch_data_2ac0

    const-string v8, "SecContentProvider"

    const-string v9, "Case DLP selection is not matched"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_213
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

    goto :goto_27b

    :pswitch_247
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

    :goto_27b
    return-object v7

    :cond_27c
    const-string v8, "SecContentProvider"

    const-string v9, "Case DLP selection null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a5a

    :pswitch_285
    const-string v8, "SEAMService"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/android/server/SEAMService;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x74717860

    if-eq v9, v10, :cond_2ac

    const v10, -0x1b958fde

    if-eq v9, v10, :cond_2a0

    goto :goto_2b7

    :cond_2a0
    const-string/jumbo v9, "getAllSEContainerCategory"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b7

    move/from16 v17, v14

    goto :goto_2b7

    :cond_2ac
    const-string/jumbo v9, "getSEContainerClipboardMode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b7

    move/from16 v17, v11

    :cond_2b7
    :goto_2b7
    packed-switch v17, :pswitch_data_2ac8

    return-object v13

    :pswitch_2bb
    invoke-virtual {v8}, Lcom/android/server/SEAMService;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllSEContainerCategory"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_31d

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_31d

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2d8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    new-array v13, v14, [Ljava/lang/Integer;

    aput-object v12, v13, v11

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d8

    :pswitch_2ec
    if-eqz v3, :cond_31e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2f5

    goto :goto_31e

    :cond_2f5
    aget-object v9, v3, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/SEAMService;->getSEContainerClipboardMode(I)I

    move-result v9

    if-ne v9, v14, :cond_303

    move v9, v14

    goto :goto_304

    :cond_303
    move v9, v11

    :goto_304
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

    :cond_31d
    return-object v7

    :cond_31e
    :goto_31e
    return-object v13

    :pswitch_31f
    const-string v8, "date_time_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x57099b48

    if-eq v9, v10, :cond_346

    const v10, 0x333ea7e2

    if-eq v9, v10, :cond_33a

    goto :goto_351

    :cond_33a
    const-string/jumbo v9, "getAutomaticTime"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_351

    move/from16 v17, v14

    goto :goto_351

    :cond_346
    const-string/jumbo v9, "isDateTimeChangeEnalbed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_351

    move/from16 v17, v11

    :cond_351
    :goto_351
    packed-switch v17, :pswitch_data_2ad0

    return-object v13

    :pswitch_355
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

    goto :goto_399

    :pswitch_377
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

    :goto_399
    nop

    return-object v7

    :pswitch_39b
    const-string v8, "apppermission_control_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    if-eqz v3, :cond_400

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_3b0

    goto :goto_400

    :cond_3b0
    const-string/jumbo v9, "getPermissionBlockedList"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a5a

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

    if-eqz v10, :cond_3ff

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3ff

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3eb
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3ff

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-array v15, v14, [Ljava/lang/String;

    aput-object v13, v15, v11

    invoke-virtual {v7, v15}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3eb

    :cond_3ff
    return-object v7

    :cond_400
    :goto_400
    return-object v13

    :pswitch_401
    const-string/jumbo v8, "smartcard_browser_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_439

    const-string/jumbo v9, "isAuthenticationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_439

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

    :cond_439
    if-eqz v2, :cond_2a5a

    const-string/jumbo v9, "getClientCertificateAlias"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a5a

    if-eqz v3, :cond_473

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_44d

    goto :goto_473

    :cond_44d
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

    :cond_473
    :goto_473
    return-object v13

    :pswitch_474
    goto/16 :goto_2a5a

    :pswitch_476
    const-string/jumbo v8, "security_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x6e1bb3c9

    if-eq v9, v10, :cond_49e

    const v10, 0x741c2b00

    if-eq v9, v10, :cond_492

    goto :goto_4a9

    :cond_492
    const-string/jumbo v9, "getCredentialStorageStatus"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a9

    move/from16 v17, v14

    goto :goto_4a9

    :cond_49e
    const-string/jumbo v9, "isDodBannerVisible"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a9

    move/from16 v17, v11

    :cond_4a9
    :goto_4a9
    packed-switch v17, :pswitch_data_2ad8

    return-object v13

    :pswitch_4ad
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

    goto :goto_505

    :pswitch_4e3
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

    :goto_505
    return-object v7

    :pswitch_506
    const-string/jumbo v8, "roaming_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x3edf31d1

    if-eq v9, v10, :cond_54c

    const v10, -0x15a386e9

    if-eq v9, v10, :cond_541

    const v10, -0xc145ad8

    if-eq v9, v10, :cond_537

    const v10, 0x4744a7b8

    if-eq v9, v10, :cond_52c

    goto :goto_557

    :cond_52c
    const-string/jumbo v9, "isRoamingPushEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_557

    move v12, v14

    goto :goto_559

    :cond_537
    const-string/jumbo v9, "isRoamingDataEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_557

    goto :goto_559

    :cond_541
    const-string/jumbo v9, "isRoamingSyncEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_557

    move v12, v11

    goto :goto_559

    :cond_54c
    const-string/jumbo v9, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_557

    const/4 v12, 0x3

    goto :goto_559

    :cond_557
    :goto_557
    move/from16 v12, v17

    :goto_559
    packed-switch v12, :pswitch_data_2ae0

    return-object v13

    :pswitch_55d
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

    goto :goto_5e5

    :pswitch_57f
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

    goto :goto_5e5

    :pswitch_5a1
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

    goto :goto_5e5

    :pswitch_5c3
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

    :goto_5e5
    nop

    return-object v7

    :pswitch_5e7
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2aec

    goto/16 :goto_6d4

    :sswitch_5fd
    const-string/jumbo v9, "isScreenCaptureEnabledInternal"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/16 v9, 0xd

    goto/16 :goto_6d6

    :sswitch_60a
    const-string/jumbo v9, "isUsbHostStorageAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    move v9, v11

    goto/16 :goto_6d6

    :sswitch_616
    const-string/jumbo v9, "isUsbTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/4 v9, 0x3

    goto/16 :goto_6d6

    :sswitch_622
    const-string/jumbo v9, "isUsbMassStorageEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    move v9, v14

    goto/16 :goto_6d6

    :sswitch_62e
    const-string/jumbo v9, "isWifiTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/16 v9, 0xa

    goto/16 :goto_6d6

    :sswitch_63b
    const-string/jumbo v9, "getAllowedFOTAInfo"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    move v9, v10

    goto/16 :goto_6d6

    :sswitch_647
    const-string/jumbo v9, "isGearPolicyEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/16 v9, 0xf

    goto/16 :goto_6d6

    :sswitch_654
    const-string/jumbo v9, "isUseSecureKeypadEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    move/from16 v9, v16

    goto/16 :goto_6d6

    :sswitch_661
    const-string/jumbo v9, "isFotaVersionAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/16 v9, 0xe

    goto/16 :goto_6d6

    :sswitch_66e
    const-string/jumbo v9, "isSDCardWriteAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/16 v9, 0xb

    goto :goto_6d6

    :sswitch_67a
    const-string/jumbo v9, "isWifiDirectAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/16 v9, 0x9

    goto :goto_6d6

    :sswitch_686
    const-string/jumbo v10, "isUserMobileDataLimitAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d4

    goto :goto_6d6

    :sswitch_690
    const-string/jumbo v9, "isVpnAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/4 v9, 0x7

    goto :goto_6d6

    :sswitch_69b
    const-string/jumbo v9, "isWifiEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/16 v9, 0xc

    goto :goto_6d6

    :sswitch_6a7
    const-string/jumbo v9, "isVideoRecordAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/4 v9, 0x6

    goto :goto_6d6

    :sswitch_6b2
    const-string/jumbo v9, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    move v9, v15

    goto :goto_6d6

    :sswitch_6bd
    const-string/jumbo v9, "isUsbMediaPlayerAvailable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    move v9, v12

    goto :goto_6d6

    :sswitch_6c8
    const-string/jumbo v9, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d4

    const/16 v9, 0x11

    goto :goto_6d6

    :cond_6d4
    :goto_6d4
    move/from16 v9, v17

    :goto_6d6
    packed-switch v9, :pswitch_data_2b36

    return-object v13

    :pswitch_6da
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

    if-nez v9, :cond_9eb

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RESTRICTIONPOLICY_POWERSAVINGMODE_ALLOWED_METHOD cursor return "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9eb

    :pswitch_715
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

    if-eqz v9, :cond_9eb

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9eb

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_737
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9eb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v13, v14, [Ljava/lang/String;

    aput-object v12, v13, v11

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_737

    :pswitch_74b
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

    goto/16 :goto_9eb

    :pswitch_76b
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

    goto/16 :goto_9eb

    :pswitch_786
    const/4 v6, 0x0

    if-nez v3, :cond_78f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_795

    :cond_78f
    aget-object v9, v3, v11

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_795
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

    goto/16 :goto_9eb

    :pswitch_7b0
    const-string/jumbo v9, "wifi_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/wifi/WifiPolicy;

    const/4 v6, 0x0

    if-nez v3, :cond_7c2

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_7c8

    :cond_7c2
    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_7c8
    if-eqz v9, :cond_7ed

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

    goto/16 :goto_9eb

    :cond_7ed
    return-object v13

    :pswitch_7ee
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

    goto/16 :goto_9eb

    :pswitch_811
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

    goto/16 :goto_9eb

    :pswitch_834
    const/4 v9, 0x0

    if-eqz v3, :cond_843

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_843

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_843
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

    goto/16 :goto_9eb

    :pswitch_866
    const/4 v9, 0x0

    if-eqz v3, :cond_875

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_875

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_875
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

    goto/16 :goto_9eb

    :pswitch_898
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

    goto/16 :goto_9eb

    :pswitch_8bb
    const/4 v9, 0x0

    if-eqz v3, :cond_8ca

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_8ca

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_8ca
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

    goto/16 :goto_9eb

    :pswitch_8ed
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

    goto/16 :goto_9eb

    :pswitch_910
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

    goto/16 :goto_9eb

    :pswitch_933
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

    goto/16 :goto_9eb

    :pswitch_956
    if-eqz v3, :cond_987

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_95f

    goto :goto_987

    :cond_95f
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

    goto :goto_9eb

    :cond_987
    :goto_987
    return-object v13

    :pswitch_988
    if-eqz v3, :cond_9b9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_991

    goto :goto_9b9

    :cond_991
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

    goto :goto_9eb

    :cond_9b9
    :goto_9b9
    return-object v13

    :pswitch_9ba
    const/4 v9, 0x0

    if-eqz v3, :cond_9c9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_9c9

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_9c9
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

    :cond_9eb
    :goto_9eb
    return-object v7

    :pswitch_9ec
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2b5e

    goto/16 :goto_ad9

    :sswitch_a02
    const-string/jumbo v9, "isSVoiceAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    move v9, v10

    goto/16 :goto_adb

    :sswitch_a0e
    const-string/jumbo v9, "isScreenCaptureEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    move v9, v15

    goto/16 :goto_adb

    :sswitch_a1a
    const-string/jumbo v9, "isSettingsChangesAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    move v9, v11

    goto/16 :goto_adb

    :sswitch_a26
    const-string/jumbo v9, "isStatusBarExpansionallowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/16 v9, 0xe

    goto/16 :goto_adb

    :sswitch_a33
    const-string/jumbo v9, "isSDCardMoveAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/16 v9, 0xa

    goto/16 :goto_adb

    :sswitch_a40
    const-string/jumbo v9, "isUsbDebuggingEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/16 v9, 0x11

    goto/16 :goto_adb

    :sswitch_a4d
    const-string/jumbo v9, "isIrisCameraEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/16 v9, 0xc

    goto/16 :goto_adb

    :sswitch_a5a
    const-string/jumbo v9, "isSafeModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/4 v9, 0x6

    goto/16 :goto_adb

    :sswitch_a66
    const-string/jumbo v9, "isOdeTrustedBootVerificationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/4 v9, 0x3

    goto/16 :goto_adb

    :sswitch_a72
    const-string/jumbo v9, "isSmartClipModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/16 v9, 0xd

    goto :goto_adb

    :sswitch_a7e
    const-string/jumbo v9, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    move v9, v14

    goto :goto_adb

    :sswitch_a89
    const-string/jumbo v9, "isSdCardEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/16 v9, 0x9

    goto :goto_adb

    :sswitch_a95
    const-string/jumbo v10, "isOTAUpgradeAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ad9

    goto :goto_adb

    :sswitch_a9f
    const-string/jumbo v9, "isStopSystemAppAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/16 v9, 0xf

    goto :goto_adb

    :sswitch_aab
    const-string/jumbo v9, "isPowerOffAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    move/from16 v9, v16

    goto :goto_adb

    :sswitch_ab7
    const-string/jumbo v9, "isScreenPinningAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/16 v9, 0xb

    goto :goto_adb

    :sswitch_ac3
    const-string/jumbo v9, "isSBeamAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    const/4 v9, 0x7

    goto :goto_adb

    :sswitch_ace
    const-string/jumbo v9, "isShareListAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad9

    move v9, v12

    goto :goto_adb

    :cond_ad9
    :goto_ad9
    move/from16 v9, v17

    :goto_adb
    packed-switch v9, :pswitch_data_2ba8

    return-object v13

    :pswitch_adf
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

    goto/16 :goto_e9b

    :pswitch_b02
    const/4 v9, 0x0

    move v10, v4

    if-eqz v3, :cond_b13

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ne v13, v14, :cond_b13

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_b27

    :cond_b13
    if-eqz v3, :cond_b27

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ne v13, v12, :cond_b27

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v12, v3, v14

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_b27
    :goto_b27
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

    goto/16 :goto_e9b

    :pswitch_b6c
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

    goto/16 :goto_e9b

    :pswitch_b90
    const/4 v9, 0x0

    if-eqz v3, :cond_ba0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_ba0

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_ba0
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

    goto/16 :goto_d7b

    :pswitch_bbf
    const/4 v9, 0x0

    if-eqz v3, :cond_bcf

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_bcf

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_bcf
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

    goto/16 :goto_d7b

    :pswitch_bee
    if-eqz v3, :cond_c22

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_bf7

    goto :goto_c22

    :cond_bf7
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

    goto/16 :goto_e9b

    :cond_c22
    :goto_c22
    return-object v13

    :pswitch_c23
    const/4 v9, 0x0

    move v10, v5

    if-eqz v3, :cond_c34

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_c34

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_c34
    if-eqz v3, :cond_c42

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-ne v11, v12, :cond_c42

    aget-object v11, v3, v14

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_c42
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

    goto/16 :goto_e9b

    :pswitch_c63
    if-eqz v3, :cond_c97

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_c6c

    goto :goto_c97

    :cond_c6c
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

    goto/16 :goto_e9b

    :cond_c97
    :goto_c97
    return-object v13

    :pswitch_c98
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

    goto/16 :goto_e9b

    :pswitch_cbc
    if-eqz v3, :cond_cf0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_cc5

    goto :goto_cf0

    :cond_cc5
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

    goto/16 :goto_e9b

    :cond_cf0
    :goto_cf0
    return-object v13

    :pswitch_cf1
    const/4 v9, 0x0

    if-eqz v3, :cond_d01

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_d01

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_d01
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

    goto :goto_d7b

    :pswitch_d24
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

    goto/16 :goto_e9b

    :pswitch_d48
    const/4 v9, 0x0

    if-eqz v3, :cond_d58

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_d58

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_d58
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

    :goto_d7b
    move v9, v10

    goto/16 :goto_e9b

    :pswitch_d7e
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

    :pswitch_da1
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

    goto/16 :goto_e9b

    :pswitch_dc5
    move v12, v11

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v14, :cond_ddc

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto :goto_de5

    :cond_ddc
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_de5
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

    goto/16 :goto_e9b

    :pswitch_e00
    if-eqz v3, :cond_e4a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_e09

    goto :goto_e4a

    :cond_e09
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

    goto :goto_e9b

    :cond_e4a
    :goto_e4a
    return-object v13

    :pswitch_e4b
    if-eqz v3, :cond_e9d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_e54

    goto :goto_e9d

    :cond_e54
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_e71

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

    goto :goto_e81

    :cond_e71
    const/4 v10, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_e81
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

    :goto_e9b
    nop

    return-object v7

    :cond_e9d
    :goto_e9d
    return-object v13

    :pswitch_e9e
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2bd0

    goto/16 :goto_f80

    :sswitch_eb4
    const-string/jumbo v9, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/4 v9, 0x6

    goto/16 :goto_f82

    :sswitch_ec0
    const-string/jumbo v9, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    move v9, v12

    goto/16 :goto_f82

    :sswitch_ecc
    const-string/jumbo v9, "isNFCEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/16 v9, 0xd

    goto/16 :goto_f82

    :sswitch_ed9
    const-string/jumbo v9, "isMockLocationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/16 v9, 0xb

    goto/16 :goto_f82

    :sswitch_ee6
    const-string/jumbo v10, "isHeadPhoneEnabled"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f80

    goto/16 :goto_f82

    :sswitch_ef1
    const-string/jumbo v9, "isHomeKeyEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    move/from16 v9, v16

    goto/16 :goto_f82

    :sswitch_efe
    const-string/jumbo v9, "isNonMarketAppAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/16 v9, 0xf

    goto/16 :goto_f82

    :sswitch_f0b
    const-string/jumbo v9, "isFirmwareRecoveryAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    move v9, v14

    goto/16 :goto_f82

    :sswitch_f17
    const-string/jumbo v9, "isLockScreenViewAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    move v9, v15

    goto :goto_f82

    :sswitch_f22
    const-string/jumbo v9, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/4 v9, 0x0

    goto :goto_f82

    :sswitch_f2d
    const-string/jumbo v9, "isNewAdminInstallationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/16 v9, 0xc

    goto :goto_f82

    :sswitch_f39
    const-string/jumbo v9, "isLockScreenEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/4 v9, 0x7

    goto :goto_f82

    :sswitch_f44
    const-string/jumbo v9, "isMicrophoneEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/16 v9, 0x9

    goto :goto_f82

    :sswitch_f50
    const-string/jumbo v9, "isMicrophoneEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/16 v9, 0xa

    goto :goto_f82

    :sswitch_f5c
    const-string/jumbo v9, "isGoogleCrashReportedAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/4 v9, 0x3

    goto :goto_f82

    :sswitch_f67
    const-string/jumbo v9, "isNonTrustedAppInstallBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    move v9, v10

    goto/16 :goto_f82

    :sswitch_f73
    const-string/jumbo v9, "isNFCEnabledWithMsg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f80

    const/16 v9, 0xe

    goto/16 :goto_f82

    :cond_f80
    :goto_f80
    move/from16 v9, v17

    :goto_f82
    packed-switch v9, :pswitch_data_2c16

    const-string v9, "SecContentProvider"

    const-string/jumbo v10, "return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_f8e
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

    goto/16 :goto_13de

    :pswitch_fb2
    const/4 v12, 0x0

    if-eqz v3, :cond_fc6

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    goto/16 :goto_fcf

    :cond_fc6
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_fcf
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

    goto/16 :goto_13de

    :pswitch_fea
    if-eqz v3, :cond_ffd

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_ff4

    goto/16 :goto_ffd

    :cond_ff4
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_ffe

    :cond_ffd
    :goto_ffd
    const/4 v6, 0x0

    :goto_ffe
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

    goto/16 :goto_13de

    :pswitch_101d
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

    goto/16 :goto_13de

    :pswitch_103c
    if-eqz v3, :cond_1070

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1045

    goto :goto_1070

    :cond_1045
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

    goto/16 :goto_13de

    :cond_1070
    :goto_1070
    return-object v13

    :pswitch_1071
    if-nez v3, :cond_1093

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

    goto :goto_10bf

    :cond_1093
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

    :goto_10bf
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

    goto/16 :goto_13de

    :pswitch_10f1
    if-eqz v3, :cond_113d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_10fa

    goto :goto_113d

    :cond_10fa
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

    goto/16 :goto_13de

    :cond_113d
    :goto_113d
    return-object v13

    :pswitch_113e
    if-eqz v3, :cond_11a7

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1147

    goto :goto_11a7

    :cond_1147
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_1165

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

    goto/16 :goto_1175

    :cond_1165
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_1175
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

    goto/16 :goto_13de

    :cond_11a7
    :goto_11a7
    return-object v13

    :pswitch_11a8
    if-eqz v3, :cond_1211

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_11b1

    goto :goto_1211

    :cond_11b1
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_11cf

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

    goto/16 :goto_11df

    :cond_11cf
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    :goto_11df
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

    goto/16 :goto_13de

    :cond_1211
    :goto_1211
    return-object v13

    :pswitch_1212
    if-eqz v3, :cond_1246

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_121b

    goto :goto_1246

    :cond_121b
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

    goto/16 :goto_13de

    :cond_1246
    :goto_1246
    return-object v13

    :pswitch_1247
    if-nez v3, :cond_1272

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

    goto :goto_12a8

    :cond_1272
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

    :goto_12a8
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

    goto/16 :goto_13de

    :pswitch_12c3
    const/4 v9, 0x0

    if-eqz v3, :cond_12d3

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_12d3

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_12d3
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

    goto/16 :goto_13de

    :pswitch_12f9
    if-eqz v3, :cond_132d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1302

    goto :goto_132d

    :cond_1302
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

    goto/16 :goto_13de

    :cond_132d
    :goto_132d
    return-object v13

    :pswitch_132e
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

    goto/16 :goto_13de

    :pswitch_1352
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

    goto :goto_13de

    :pswitch_1375
    if-eqz v3, :cond_13a9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_137f

    goto/16 :goto_13a9

    :cond_137f
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

    goto :goto_13de

    :cond_13a9
    :goto_13a9
    return-object v13

    :pswitch_13aa
    if-eqz v3, :cond_13e0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_13b4

    goto/16 :goto_13e0

    :cond_13b4
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

    :goto_13de
    nop

    return-object v7

    :cond_13e0
    :goto_13e0
    return-object v13

    :pswitch_13e1
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2c3c

    goto/16 :goto_14e0

    :sswitch_13f7
    const-string v9, "checkPackageSource"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/4 v9, 0x0

    goto/16 :goto_14e2

    :sswitch_1402
    const-string/jumbo v9, "isAirplaneModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    move v9, v12

    goto/16 :goto_14e2

    :sswitch_140e
    const-string/jumbo v9, "isClipboardShareAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0xe

    goto/16 :goto_14e2

    :sswitch_141b
    const-string/jumbo v9, "isFastEncryptionAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0x11

    goto/16 :goto_14e2

    :sswitch_1428
    const-string/jumbo v9, "isFactoryResetAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    move v9, v10

    goto/16 :goto_14e2

    :sswitch_1434
    const-string/jumbo v9, "isActivationLockAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    move v9, v14

    goto/16 :goto_14e2

    :sswitch_1440
    const-string/jumbo v9, "isAndroidBeamAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/4 v9, 0x3

    goto/16 :goto_14e2

    :sswitch_144c
    const-string/jumbo v9, "isDeveloperModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0xf

    goto/16 :goto_14e2

    :sswitch_1459
    const-string/jumbo v9, "isClipboardShareAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0xd

    goto/16 :goto_14e2

    :sswitch_1466
    const-string/jumbo v9, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/4 v9, 0x6

    goto/16 :goto_14e2

    :sswitch_1472
    const-string/jumbo v9, "isCameraEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0x9

    goto :goto_14e2

    :sswitch_147e
    const-string/jumbo v9, "isBackgroundDataEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    move/from16 v9, v16

    goto :goto_14e2

    :sswitch_148a
    const-string/jumbo v9, "isBackupAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/4 v9, 0x7

    goto :goto_14e2

    :sswitch_1495
    const-string/jumbo v10, "isAudioRecordAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14e0

    goto/16 :goto_14e2

    :sswitch_14a0
    const-string/jumbo v9, "isCellularDataAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0xa

    goto/16 :goto_14e2

    :sswitch_14ad
    const-string/jumbo v9, "isClipboardAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0xc

    goto/16 :goto_14e2

    :sswitch_14ba
    const-string/jumbo v9, "isClipboardAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0xb

    goto/16 :goto_14e2

    :sswitch_14c7
    const-string/jumbo v9, "isBluetoothTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    move v9, v15

    goto/16 :goto_14e2

    :sswitch_14d3
    const-string/jumbo v9, "isDataSavingAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e0

    const/16 v9, 0x12

    goto/16 :goto_14e2

    :cond_14e0
    :goto_14e0
    move/from16 v9, v17

    :goto_14e2
    packed-switch v9, :pswitch_data_2c8a

    return-object v13

    :pswitch_14e6
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

    goto/16 :goto_187f

    :pswitch_1505
    if-eqz v3, :cond_150e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_150e

    return-object v13

    :cond_150e
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

    goto/16 :goto_187f

    :pswitch_1550
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

    goto/16 :goto_187f

    :pswitch_1574
    const/4 v9, 0x0

    if-eqz v3, :cond_1584

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1584

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_1584
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

    :pswitch_15a7
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

    goto/16 :goto_187f

    :pswitch_15cb
    if-eqz v3, :cond_15fb

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_15d5

    goto/16 :goto_15fb

    :cond_15d5
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

    goto/16 :goto_187f

    :cond_15fb
    :goto_15fb
    return-object v13

    :pswitch_15fc
    if-eqz v3, :cond_1648

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_1606

    goto/16 :goto_1648

    :cond_1606
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

    goto/16 :goto_187f

    :cond_1648
    :goto_1648
    return-object v13

    :pswitch_1649
    if-eqz v3, :cond_1665

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1653

    goto/16 :goto_1665

    :cond_1653
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto/16 :goto_166f

    :cond_1665
    :goto_1665
    const/4 v10, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_166f
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

    goto/16 :goto_187f

    :pswitch_168b
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

    goto/16 :goto_187f

    :pswitch_16af
    if-eqz v3, :cond_16e4

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_16b9

    goto/16 :goto_16e4

    :cond_16b9
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

    goto/16 :goto_187f

    :cond_16e4
    :goto_16e4
    return-object v13

    :pswitch_16e5
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

    goto/16 :goto_187f

    :pswitch_1709
    if-eqz v3, :cond_173e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1713

    goto/16 :goto_173e

    :cond_1713
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

    goto/16 :goto_187f

    :cond_173e
    :goto_173e
    return-object v13

    :pswitch_173f
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

    goto/16 :goto_187f

    :pswitch_1763
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

    goto/16 :goto_187f

    :pswitch_1787
    const/4 v9, 0x0

    if-eqz v3, :cond_1797

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1797

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_1797
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

    goto :goto_181c

    :pswitch_17ba
    const/4 v9, 0x0

    if-eqz v3, :cond_17ca

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_17ca

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_17ca
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

    goto/16 :goto_181c

    :pswitch_17ee
    const/4 v9, 0x0

    if-eqz v3, :cond_17fe

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_17fe

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_17fe
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

    :goto_181c
    move v9, v10

    goto/16 :goto_187f

    :pswitch_181f
    if-eqz v3, :cond_1854

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1829

    goto/16 :goto_1854

    :cond_1829
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

    goto/16 :goto_187f

    :cond_1854
    :goto_1854
    return-object v13

    :pswitch_1855
    if-eqz v3, :cond_1881

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_185f

    goto/16 :goto_1881

    :cond_185f
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

    :goto_187f
    nop

    return-object v7

    :cond_1881
    :goto_1881
    return-object v13

    :pswitch_1882
    const-string/jumbo v8, "password_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2cb4

    goto/16 :goto_191e

    :sswitch_1898
    const-string/jumbo v9, "isBiometricAuthenticationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    const/4 v9, 0x0

    goto/16 :goto_1920

    :sswitch_18a4
    const-string/jumbo v9, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    const/4 v9, 0x6

    goto/16 :goto_1920

    :sswitch_18b0
    const-string/jumbo v10, "isPasswordPatternMatched"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_191e

    goto/16 :goto_1920

    :sswitch_18bb
    const-string/jumbo v9, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    move v9, v14

    goto/16 :goto_1920

    :sswitch_18c7
    const-string/jumbo v9, "isChangeRequested"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    move v9, v12

    goto/16 :goto_1920

    :sswitch_18d3
    const-string/jumbo v9, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    const/16 v9, 0xa

    goto/16 :goto_1920

    :sswitch_18e0
    const-string/jumbo v9, "getPasswordLockDelay"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    const/4 v9, 0x7

    goto/16 :goto_1920

    :sswitch_18ec
    const-string/jumbo v9, "getMaximumFailedPasswordsForWipe"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    const/16 v9, 0x9

    goto/16 :goto_1920

    :sswitch_18f9
    const-string/jumbo v9, "isPasswordVisibilityEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    move/from16 v9, v16

    goto/16 :goto_1920

    :sswitch_1906
    const-string/jumbo v9, "isExternalStorageForFailedPasswordsWipeExcluded"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    const/4 v9, 0x3

    goto/16 :goto_1920

    :sswitch_1912
    const-string/jumbo v9, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_191e

    move v9, v15

    goto/16 :goto_1920

    :cond_191e
    :goto_191e
    move/from16 v9, v17

    :goto_1920
    packed-switch v9, :pswitch_data_2ce2

    return-object v13

    :pswitch_1924
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

    goto/16 :goto_1c46

    :pswitch_1945
    if-eqz v3, :cond_19c8

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_194f

    goto/16 :goto_19c8

    :cond_194f
    const/4 v9, 0x0

    aget-object v10, v3, v9

    if-nez v10, :cond_1957

    const/4 v10, 0x0

    goto/16 :goto_195d

    :cond_1957
    aget-object v10, v3, v9

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    :goto_195d
    move-object v9, v10

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-ne v10, v12, :cond_198e

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

    goto/16 :goto_1997

    :cond_198e
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v10

    :goto_1997
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

    goto/16 :goto_1c46

    :cond_19c8
    :goto_19c8
    return-object v13

    :pswitch_19c9
    if-eqz v3, :cond_19f5

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

    goto/16 :goto_19fe

    :cond_19f5
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    :goto_19fe
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

    goto/16 :goto_1c46

    :pswitch_1a2f
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

    goto/16 :goto_1c46

    :pswitch_1a53
    if-eqz v3, :cond_1a9a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1a5d

    goto/16 :goto_1a9a

    :cond_1a5d
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

    goto/16 :goto_1c46

    :cond_1a9a
    :goto_1a9a
    return-object v13

    :pswitch_1a9b
    if-nez v3, :cond_1abf

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

    goto/16 :goto_1aed

    :cond_1abf
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

    :goto_1aed
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

    goto/16 :goto_1c46

    :pswitch_1b1f
    if-eqz v3, :cond_1b50

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1b29

    goto/16 :goto_1b50

    :cond_1b29
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

    goto/16 :goto_1c46

    :cond_1b50
    :goto_1b50
    return-object v13

    :pswitch_1b51
    if-eqz v3, :cond_1b7d

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

    goto/16 :goto_1b86

    :cond_1b7d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_1b86
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

    goto/16 :goto_1c46

    :pswitch_1bb7
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

    goto/16 :goto_1c46

    :pswitch_1bdb
    if-eqz v3, :cond_1c11

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_1be5

    goto/16 :goto_1c11

    :cond_1be5
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

    goto/16 :goto_1c46

    :cond_1c11
    :goto_1c11
    return-object v13

    :pswitch_1c12
    if-eqz v3, :cond_1c47

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1c1c

    goto/16 :goto_1c47

    :cond_1c1c
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

    :goto_1c46
    return-object v7

    :cond_1c47
    :goto_1c47
    return-object v13

    :pswitch_1c48
    const-string/jumbo v8, "password_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2cfc

    goto/16 :goto_1cf1

    :sswitch_1c5e
    const-string/jumbo v9, "hasMaxRepeatedCharacters"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    const/16 v9, 0xb

    goto/16 :goto_1cf3

    :sswitch_1c6b
    const-string/jumbo v9, "hasForbiddenNumericSequence"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    const/16 v9, 0x9

    goto/16 :goto_1cf3

    :sswitch_1c78
    const-string/jumbo v9, "hasForbiddenCharacterSequence"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    const/4 v9, 0x7

    goto/16 :goto_1cf3

    :sswitch_1c84
    const-string/jumbo v9, "hasForbiddenData"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    move v9, v15

    goto/16 :goto_1cf3

    :sswitch_1c90
    const-string/jumbo v9, "getPasswordChangeTimeout"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    move/from16 v9, v16

    goto/16 :goto_1cf3

    :sswitch_1c9d
    const-string/jumbo v9, "getForbiddenStrings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    const/4 v9, 0x0

    goto/16 :goto_1cf3

    :sswitch_1ca9
    const-string/jumbo v9, "getRequiredPwdPatternRestrictions"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    const/4 v9, 0x6

    goto/16 :goto_1cf3

    :sswitch_1cb5
    const-string/jumbo v9, "getMaximumCharacterOccurences"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    move v9, v14

    goto/16 :goto_1cf3

    :sswitch_1cc1
    const-string/jumbo v9, "hasForbiddenStringDistance"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    const/16 v9, 0xa

    goto/16 :goto_1cf3

    :sswitch_1cce
    const-string/jumbo v9, "getMaximumNumericSequenceLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    const/4 v9, 0x3

    goto/16 :goto_1cf3

    :sswitch_1cda
    const-string/jumbo v9, "getMaximumCharacterSequenceLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cf1

    move v9, v12

    goto/16 :goto_1cf3

    :sswitch_1ce6
    const-string/jumbo v10, "getMinimumCharacterChangeLength"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1cf1

    goto/16 :goto_1cf3

    :cond_1cf1
    :goto_1cf1
    move/from16 v9, v17

    :goto_1cf3
    packed-switch v9, :pswitch_data_2d2e

    return-object v13

    :pswitch_1cf7
    if-eqz v3, :cond_1d28

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1d01

    goto/16 :goto_1d28

    :cond_1d01
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

    goto/16 :goto_1f21

    :cond_1d28
    :goto_1d28
    return-object v13

    :pswitch_1d29
    if-eqz v3, :cond_1d5c

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_1d33

    goto/16 :goto_1d5c

    :cond_1d33
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

    goto/16 :goto_1f21

    :cond_1d5c
    :goto_1d5c
    return-object v13

    :pswitch_1d5d
    if-eqz v3, :cond_1d8e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1d67

    goto/16 :goto_1d8e

    :cond_1d67
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

    goto/16 :goto_1f21

    :cond_1d8e
    :goto_1d8e
    return-object v13

    :pswitch_1d8f
    if-eqz v3, :cond_1dc0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1d99

    goto/16 :goto_1dc0

    :cond_1d99
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

    goto/16 :goto_1f21

    :cond_1dc0
    :goto_1dc0
    return-object v13

    :pswitch_1dc1
    if-eqz v3, :cond_1df2

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1dcb

    goto/16 :goto_1df2

    :cond_1dcb
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

    goto/16 :goto_1f21

    :cond_1df2
    :goto_1df2
    return-object v13

    :pswitch_1df3
    if-eqz v3, :cond_1e24

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1dfd

    goto/16 :goto_1e24

    :cond_1dfd
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

    goto/16 :goto_1f21

    :cond_1e24
    :goto_1e24
    return-object v13

    :pswitch_1e25
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

    goto/16 :goto_1f21

    :pswitch_1e49
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

    goto/16 :goto_1f21

    :pswitch_1e6d
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

    goto/16 :goto_1f21

    :pswitch_1e91
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

    goto/16 :goto_1f21

    :pswitch_1eb5
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

    goto/16 :goto_1f21

    :pswitch_1ed9
    if-eqz v3, :cond_1f22

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1ee3

    goto/16 :goto_1f22

    :cond_1ee3
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

    if-eqz v9, :cond_1f21

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f21

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1f0c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f21

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-array v12, v14, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f0c

    :cond_1f21
    :goto_1f21
    return-object v7

    :cond_1f22
    :goto_1f22
    return-object v13

    :pswitch_1f23
    const-string/jumbo v8, "location_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x66608807

    if-eq v9, v10, :cond_1f5f

    const v10, -0x40efadf9

    if-eq v9, v10, :cond_1f52

    const v10, 0x63cbc5bc

    if-eq v9, v10, :cond_1f45

    goto/16 :goto_1f6a

    :cond_1f45
    const-string/jumbo v9, "isLocationProviderBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f6a

    const/16 v17, 0x0

    goto/16 :goto_1f6a

    :cond_1f52
    const-string/jumbo v9, "isGPSStateChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f6a

    move/from16 v17, v12

    goto/16 :goto_1f6a

    :cond_1f5f
    const-string/jumbo v9, "isLocationProviderBlockedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f6a

    move/from16 v17, v14

    :cond_1f6a
    :goto_1f6a
    packed-switch v17, :pswitch_data_2d4a

    return-object v13

    :pswitch_1f6e
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

    goto/16 :goto_2022

    :pswitch_1f92
    if-eqz v3, :cond_1ff6

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_1f9c

    goto/16 :goto_1ff6

    :cond_1f9c
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_1fd4

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_1fcb

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

    :cond_1fcb
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v11, v9}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v9

    goto/16 :goto_1fdb

    :cond_1fd4
    const/4 v10, 0x0

    aget-object v9, v3, v10

    invoke-virtual {v8, v9, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v9

    :goto_1fdb
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

    goto/16 :goto_2022

    :cond_1ff6
    :goto_1ff6
    return-object v13

    :pswitch_1ff7
    if-eqz v3, :cond_2024

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2001

    goto/16 :goto_2024

    :cond_2001
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

    :goto_2022
    nop

    return-object v7

    :cond_2024
    :goto_2024
    return-object v13

    :pswitch_2025
    goto/16 :goto_2a5a

    :pswitch_2027
    const-string v8, "browser_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/browser/BrowserPolicy;

    const-string/jumbo v10, "misc_policy"

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    if-eqz v10, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2d54

    goto/16 :goto_2082

    :sswitch_2047
    const-string/jumbo v9, "getURLFilterReportEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2082

    move v9, v12

    goto/16 :goto_2084

    :sswitch_2053
    const-string/jumbo v9, "isUrlBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2082

    const/4 v9, 0x3

    goto/16 :goto_2084

    :sswitch_205f
    const-string/jumbo v9, "getURLFilterEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2082

    const/4 v9, 0x0

    goto/16 :goto_2084

    :sswitch_206b
    const-string/jumbo v11, "isGlobalProxyAllowed"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2082

    goto/16 :goto_2084

    :sswitch_2076
    const-string/jumbo v9, "getURLFilterList"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2082

    move v9, v14

    goto/16 :goto_2084

    :cond_2082
    :goto_2082
    move/from16 v9, v17

    :goto_2084
    packed-switch v9, :pswitch_data_2d6a

    return-object v13

    :pswitch_2088
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

    goto/16 :goto_2157

    :pswitch_20a7
    if-eqz v3, :cond_20d7

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_20b1

    goto/16 :goto_20d7

    :cond_20b1
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

    goto/16 :goto_2157

    :cond_20d7
    :goto_20d7
    return-object v13

    :pswitch_20d8
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

    goto/16 :goto_2157

    :pswitch_20fc
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

    if-eqz v9, :cond_2157

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2157

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_211f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2157

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v13, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v13, v15

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_211f

    :pswitch_2134
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

    :cond_2157
    :goto_2157
    return-object v7

    :pswitch_2158
    goto/16 :goto_2a5a

    :pswitch_215a
    goto/16 :goto_2a5a

    :pswitch_215c
    goto/16 :goto_2a5a

    :pswitch_215e
    const-string v8, "certificate_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v8, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2d78

    goto/16 :goto_21f9

    :sswitch_2173
    const-string/jumbo v9, "isRevocationCheckEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    const/4 v9, 0x6

    goto/16 :goto_21fb

    :sswitch_217f
    const-string/jumbo v9, "validateChainAtInstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    const/16 v9, 0xa

    goto/16 :goto_21fb

    :sswitch_218c
    const-string/jumbo v9, "notifyCertificateFailure"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    move/from16 v9, v16

    goto/16 :goto_21fb

    :sswitch_2199
    const-string/jumbo v9, "isSignatureIdentityInformationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    const/4 v9, 0x3

    goto/16 :goto_21fb

    :sswitch_21a5
    const-string/jumbo v9, "isCaCertificateDisabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    move v9, v14

    goto/16 :goto_21fb

    :sswitch_21b1
    const-string/jumbo v10, "getIdentitiesFromSignatures"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21f9

    goto/16 :goto_21fb

    :sswitch_21bc
    const-string/jumbo v9, "isCaCertificateTrustedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    const/4 v9, 0x0

    goto/16 :goto_21fb

    :sswitch_21c8
    const-string/jumbo v9, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    move v9, v12

    goto/16 :goto_21fb

    :sswitch_21d4
    const-string/jumbo v9, "isOcspCheckEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    const/4 v9, 0x7

    goto/16 :goto_21fb

    :sswitch_21e0
    const-string/jumbo v9, "validateCertificateAtInstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    const/16 v9, 0x9

    goto/16 :goto_21fb

    :sswitch_21ed
    const-string/jumbo v9, "isCertificateValidationAtInstallEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f9

    move v9, v15

    goto/16 :goto_21fb

    :cond_21f9
    :goto_21f9
    move/from16 v9, v17

    :goto_21fb
    packed-switch v9, :pswitch_data_2da6

    goto/16 :goto_243b

    :pswitch_2200
    if-eqz v3, :cond_2232

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_220a

    goto/16 :goto_2232

    :cond_220a
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

    goto/16 :goto_243b

    :cond_2232
    :goto_2232
    return-object v13

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

    goto/16 :goto_243b

    :cond_2265
    :goto_2265
    return-object v13

    :pswitch_2266
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

    goto/16 :goto_243b

    :pswitch_228a
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

    goto/16 :goto_243b

    :pswitch_22ae
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

    goto/16 :goto_243b

    :pswitch_22d2
    if-eqz v3, :cond_22ed

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v12, :cond_22dc

    goto/16 :goto_22ed

    :cond_22dc
    const/4 v9, 0x0

    aget-object v9, v3, v9

    aget-object v10, v3, v14

    aget-object v11, v3, v12

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    goto/16 :goto_243b

    :cond_22ed
    :goto_22ed
    return-object v13

    :pswitch_22ee
    if-eqz v3, :cond_2347

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_22f8

    goto/16 :goto_2347

    :cond_22f8
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

    if-eqz v9, :cond_243b

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_243b

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2323
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_243b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_2331
    if-ge v13, v12, :cond_2343

    aget-object v15, v11, v13

    new-array v1, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v1, v16

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_2331

    :cond_2343
    nop

    move-object/from16 v1, p1

    goto :goto_2323

    :cond_2347
    :goto_2347
    return-object v13

    :pswitch_2348
    if-eqz v3, :cond_237d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2352

    goto/16 :goto_237d

    :cond_2352
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

    goto/16 :goto_243b

    :cond_237d
    :goto_237d
    return-object v13

    :pswitch_237e
    if-eqz v3, :cond_2386

    array-length v1, v3

    if-ne v1, v14, :cond_2386

    move v1, v14

    goto/16 :goto_2387

    :cond_2386
    const/4 v1, 0x0

    :goto_2387
    if-eqz v1, :cond_2397

    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    nop

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v9

    goto/16 :goto_23a0

    :cond_2397
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_23a0
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

    goto/16 :goto_243b

    :pswitch_23bb
    if-eqz v3, :cond_23f4

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_23c5

    goto/16 :goto_23f4

    :cond_23c5
    move v1, v5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-le v9, v14, :cond_23d2

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_23d2
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

    goto/16 :goto_243b

    :cond_23f4
    :goto_23f4
    return-object v13

    :pswitch_23f5
    if-eqz v3, :cond_243a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gt v1, v14, :cond_23ff

    goto/16 :goto_243a

    :cond_23ff
    move v1, v5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_240c

    aget-object v9, v3, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_240c
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

    goto/16 :goto_243b

    :cond_243a
    :goto_243a
    return-object v13

    :cond_243b
    :goto_243b
    return-object v7

    :pswitch_243c
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v1, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2dc0

    goto/16 :goto_249d

    :sswitch_2451
    const-string/jumbo v8, "getCookiesSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_249d

    move/from16 v16, v12

    goto/16 :goto_249f

    :sswitch_245e
    const-string/jumbo v8, "getHttpProxy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_249d

    const/16 v16, 0x0

    goto/16 :goto_249f

    :sswitch_246b
    const-string/jumbo v8, "getJavaScriptSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_249d

    const/16 v16, 0x3

    goto/16 :goto_249f

    :sswitch_2478
    const-string/jumbo v8, "getAutoFillSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_249d

    move/from16 v16, v14

    goto/16 :goto_249f

    :sswitch_2485
    const-string/jumbo v8, "getPopupsSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_249d

    move/from16 v16, v9

    goto/16 :goto_249f

    :sswitch_2492
    const-string/jumbo v8, "getForceFraudWarningSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_249d

    goto/16 :goto_249f

    :cond_249d
    :goto_249d
    move/from16 v16, v17

    :goto_249f
    packed-switch v16, :pswitch_data_2dda

    return-object v13

    :pswitch_24a3
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

    goto/16 :goto_2576

    :pswitch_24c7
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

    goto/16 :goto_2576

    :pswitch_24eb
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

    goto/16 :goto_2576

    :pswitch_250f
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

    goto/16 :goto_2576

    :pswitch_2533
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

    goto/16 :goto_2576

    :pswitch_2557
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

    :goto_2576
    return-object v7

    :pswitch_2577
    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2dea

    goto/16 :goto_25f7

    :sswitch_2582
    const-string v1, "bluetoothLogForRemote"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    move v9, v15

    goto/16 :goto_25f9

    :sswitch_258d
    const-string v1, "bluetoothLogForDevice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    const/16 v9, 0x9

    goto/16 :goto_25f9

    :sswitch_2599
    const-string/jumbo v1, "isSocketAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    goto/16 :goto_25f9

    :sswitch_25a4
    const-string/jumbo v1, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    const/4 v9, 0x6

    goto/16 :goto_25f9

    :sswitch_25b0
    const-string v1, "bluetoothSocketLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    move/from16 v9, v16

    goto/16 :goto_25f9

    :sswitch_25bc
    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    move v9, v12

    goto/16 :goto_25f9

    :sswitch_25c8
    const-string/jumbo v1, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    const/4 v9, 0x3

    goto/16 :goto_25f9

    :sswitch_25d4
    const-string/jumbo v1, "isBluetoothLogEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    move v9, v14

    goto/16 :goto_25f9

    :sswitch_25e0
    const-string v1, "bluetoothLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    const/4 v9, 0x7

    goto/16 :goto_25f9

    :sswitch_25eb
    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    const/4 v9, 0x0

    goto/16 :goto_25f9

    :cond_25f7
    :goto_25f7
    move/from16 v9, v17

    :goto_25f9
    packed-switch v9, :pswitch_data_2e14

    goto/16 :goto_27de

    :pswitch_25fe
    if-eqz v3, :cond_2639

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-lt v1, v8, :cond_2639

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_260f

    goto/16 :goto_2639

    :cond_260f
    aget-object v1, v3, v12

    if-nez v1, :cond_2621

    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1, v8, v13}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_27de

    :cond_2621
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

    goto/16 :goto_27de

    :cond_2639
    :goto_2639
    return-object v13

    :pswitch_263a
    if-eqz v3, :cond_2657

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-lt v1, v8, :cond_2657

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_264b

    goto/16 :goto_2657

    :cond_264b
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    aget-object v9, v3, v12

    invoke-static {v1, v8, v9}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27de

    :cond_2657
    :goto_2657
    return-object v13

    :pswitch_2658
    if-eqz v3, :cond_2672

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lt v1, v12, :cond_2672

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_2668

    goto/16 :goto_2672

    :cond_2668
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    invoke-static {v1, v8}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27de

    :cond_2672
    :goto_2672
    return-object v13

    :pswitch_2673
    if-eqz v3, :cond_26a3

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_267d

    goto/16 :goto_26a3

    :cond_267d
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

    goto/16 :goto_27de

    :cond_26a3
    :goto_26a3
    return-object v13

    :pswitch_26a4
    if-eqz v3, :cond_26cd

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-ge v1, v8, :cond_26af

    goto/16 :goto_26cd

    :cond_26af
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

    goto/16 :goto_27de

    :cond_26cd
    :goto_26cd
    return-object v13

    :pswitch_26ce
    if-eqz v3, :cond_2715

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-ge v1, v8, :cond_26d9

    goto/16 :goto_2715

    :cond_26d9
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

    goto/16 :goto_27de

    :cond_2715
    :goto_2715
    return-object v13

    :pswitch_2716
    if-eqz v3, :cond_274a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2720

    goto/16 :goto_274a

    :cond_2720
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

    goto/16 :goto_27de

    :cond_274a
    :goto_274a
    return-object v13

    :pswitch_274b
    if-eqz v3, :cond_278d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2755

    goto/16 :goto_278d

    :cond_2755
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

    goto/16 :goto_27de

    :cond_278d
    :goto_278d
    return-object v13

    :pswitch_278e
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

    goto/16 :goto_27de

    :pswitch_27ad
    if-eqz v3, :cond_27dd

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_27b7

    goto/16 :goto_27dd

    :cond_27b7
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

    goto/16 :goto_27de

    :cond_27dd
    :goto_27dd
    return-object v13

    :goto_27de
    return-object v7

    :pswitch_27df
    const/4 v8, 0x3

    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v1, :cond_2a5a

    if-eqz v2, :cond_2a5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2e2c

    goto/16 :goto_2860

    :sswitch_27f5
    const-string/jumbo v8, "isOutgoingCallsAllowed"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2860

    move v8, v12

    goto/16 :goto_2862

    :sswitch_2801
    const-string/jumbo v9, "isLimitedDiscoverableEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2860

    goto/16 :goto_2862

    :sswitch_280c
    const-string/jumbo v8, "isBLEAllowed"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2860

    move v8, v15

    goto/16 :goto_2862

    :sswitch_2818
    const-string/jumbo v8, "isDiscoverableEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2860

    move v8, v9

    goto/16 :goto_2862

    :sswitch_2824
    const-string/jumbo v8, "isDesktopConnectivityEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2860

    move/from16 v8, v16

    goto/16 :goto_2862

    :sswitch_2831
    const-string/jumbo v8, "isBluetoothLogEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2860

    const/4 v8, 0x7

    goto/16 :goto_2862

    :sswitch_283d
    const-string v8, "bluetoothLog"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2860

    const/4 v8, 0x6

    goto/16 :goto_2862

    :sswitch_2848
    const-string/jumbo v8, "isBluetoothEnabledWithMsg"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2860

    move v8, v14

    goto/16 :goto_2862

    :sswitch_2854
    const-string/jumbo v8, "isBluetoothEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2860

    const/4 v8, 0x0

    goto/16 :goto_2862

    :cond_2860
    :goto_2860
    move/from16 v8, v17

    :goto_2862
    packed-switch v8, :pswitch_data_2e52

    return-object v13

    :pswitch_2866
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

    goto/16 :goto_2a24

    :pswitch_288a
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

    goto/16 :goto_2a24

    :pswitch_28ae
    if-eqz v3, :cond_28e0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-ge v8, v12, :cond_28b8

    goto/16 :goto_28e0

    :cond_28b8
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

    goto/16 :goto_2a24

    :cond_28e0
    :goto_28e0
    return-object v13

    :pswitch_28e1
    if-eqz v3, :cond_2911

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_28eb

    goto/16 :goto_2911

    :cond_28eb
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

    goto/16 :goto_2a24

    :cond_2911
    :goto_2911
    return-object v13

    :pswitch_2912
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

    goto/16 :goto_2a24

    :pswitch_2936
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

    goto/16 :goto_2a24

    :pswitch_295a
    if-eqz v3, :cond_29a1

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_2964

    goto/16 :goto_29a1

    :cond_2964
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

    goto/16 :goto_2a24

    :cond_29a1
    :goto_29a1
    return-object v13

    :pswitch_29a2
    if-eqz v3, :cond_29e9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_29ac

    goto/16 :goto_29e9

    :cond_29ac
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

    goto/16 :goto_2a24

    :cond_29e9
    :goto_29e9
    return-object v13

    :pswitch_29ea
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

    :goto_2a24
    nop

    return-object v7

    :pswitch_2a26
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_2a5a

    if-eqz v2, :cond_2a5a

    const-string/jumbo v8, "isAuditLogEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a5a

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

    :pswitch_2a59
    nop

    :cond_2a5a
    :goto_2a5a
    return-object v13

    nop

    :pswitch_data_2a5c
    .packed-switch 0x1
        :pswitch_2a59
        :pswitch_2a26
        :pswitch_27df
        :pswitch_2577
        :pswitch_243c
        :pswitch_215e
        :pswitch_215c
        :pswitch_215a
        :pswitch_2158
        :pswitch_2027
        :pswitch_2025
        :pswitch_1f23
        :pswitch_1c48
        :pswitch_1882
        :pswitch_13e1
        :pswitch_e9e
        :pswitch_9ec
        :pswitch_5e7
        :pswitch_506
        :pswitch_476
        :pswitch_474
        :pswitch_401
        :pswitch_39b
        :pswitch_31f
        :pswitch_67
        :pswitch_285
        :pswitch_1e0
        :pswitch_199
        :pswitch_ba
        :pswitch_69
    .end packed-switch

    :sswitch_data_2a9c
    .sparse-switch
        -0x35a747d7 -> :sswitch_f9
        0x1020174d -> :sswitch_ee
        0x1220385a -> :sswitch_e4
        0x4f30b64f -> :sswitch_d9
        0x78c697e8 -> :sswitch_ce
    .end sparse-switch

    :pswitch_data_2ab2
    .packed-switch 0x0
        :pswitch_17b
        :pswitch_15e
        :pswitch_141
        :pswitch_124
        :pswitch_10a
    .end packed-switch

    :pswitch_data_2ac0
    .packed-switch 0x0
        :pswitch_247
        :pswitch_213
    .end packed-switch

    :pswitch_data_2ac8
    .packed-switch 0x0
        :pswitch_2ec
        :pswitch_2bb
    .end packed-switch

    :pswitch_data_2ad0
    .packed-switch 0x0
        :pswitch_377
        :pswitch_355
    .end packed-switch

    :pswitch_data_2ad8
    .packed-switch 0x0
        :pswitch_4e3
        :pswitch_4ad
    .end packed-switch

    :pswitch_data_2ae0
    .packed-switch 0x0
        :pswitch_5c3
        :pswitch_5a1
        :pswitch_57f
        :pswitch_55d
    .end packed-switch

    :sswitch_data_2aec
    .sparse-switch
        -0x6a3a5990 -> :sswitch_6c8
        -0x562f9482 -> :sswitch_6bd
        -0x4e3d6d40 -> :sswitch_6b2
        -0x460411da -> :sswitch_6a7
        -0x39b5211e -> :sswitch_69b
        -0x37226d22 -> :sswitch_690
        -0x3581de92 -> :sswitch_686
        -0x30c133a0 -> :sswitch_67a
        -0x28516cec -> :sswitch_66e
        -0x9cfa0f0 -> :sswitch_661
        -0x4e1daa7 -> :sswitch_654
        -0x4445baa -> :sswitch_647
        -0xebe1ca -> :sswitch_63b
        0x12bbc810 -> :sswitch_62e
        0x5f1771f4 -> :sswitch_622
        0x730fdeab -> :sswitch_616
        0x75020c0f -> :sswitch_60a
        0x788dd2ce -> :sswitch_5fd
    .end sparse-switch

    :pswitch_data_2b36
    .packed-switch 0x0
        :pswitch_9ba
        :pswitch_988
        :pswitch_956
        :pswitch_933
        :pswitch_910
        :pswitch_8ed
        :pswitch_8bb
        :pswitch_898
        :pswitch_866
        :pswitch_834
        :pswitch_811
        :pswitch_7ee
        :pswitch_7b0
        :pswitch_786
        :pswitch_76b
        :pswitch_74b
        :pswitch_715
        :pswitch_6da
    .end packed-switch

    :sswitch_data_2b5e
    .sparse-switch
        -0x6c43a0eb -> :sswitch_ace
        -0x5eef4930 -> :sswitch_ac3
        -0x57f5d70e -> :sswitch_ab7
        -0x55af2a6c -> :sswitch_aab
        -0x42b9a7be -> :sswitch_a9f
        -0x3d0295e2 -> :sswitch_a95
        -0x331a660a -> :sswitch_a89
        -0x2873ac11 -> :sswitch_a7e
        -0x1ad99baa -> :sswitch_a72
        -0x10b8615d -> :sswitch_a66
        -0x53b1dd2 -> :sswitch_a5a
        0x21990efc -> :sswitch_a4d
        0x3e90c48d -> :sswitch_a40
        0x405a90ec -> :sswitch_a33
        0x53ef861d -> :sswitch_a26
        0x5bb25232 -> :sswitch_a1a
        0x6bef28f1 -> :sswitch_a0e
        0x7c45f31f -> :sswitch_a02
    .end sparse-switch

    :pswitch_data_2ba8
    .packed-switch 0x0
        :pswitch_e4b
        :pswitch_e00
        :pswitch_dc5
        :pswitch_da1
        :pswitch_d7e
        :pswitch_d48
        :pswitch_d24
        :pswitch_cf1
        :pswitch_cbc
        :pswitch_c98
        :pswitch_c63
        :pswitch_c23
        :pswitch_bee
        :pswitch_bbf
        :pswitch_b90
        :pswitch_b6c
        :pswitch_b02
        :pswitch_adf
    .end packed-switch

    :sswitch_data_2bd0
    .sparse-switch
        -0x74a4d725 -> :sswitch_f73
        -0x71206782 -> :sswitch_f67
        -0x6c0db8af -> :sswitch_f5c
        -0x694bd3d6 -> :sswitch_f50
        -0x553c4d53 -> :sswitch_f44
        -0x4d525a40 -> :sswitch_f39
        -0x4406e5f2 -> :sswitch_f2d
        -0x39e13355 -> :sswitch_f22
        -0x2de531be -> :sswitch_f17
        -0x1ab59b72 -> :sswitch_f0b
        -0xa2586fa -> :sswitch_efe
        0x5ad79eb -> :sswitch_ef1
        0x5be9d3d -> :sswitch_ee6
        0x26581d58 -> :sswitch_ed9
        0x36e6d3e0 -> :sswitch_ecc
        0x4bd14915 -> :sswitch_ec0
        0x6c3b6517 -> :sswitch_eb4
    .end sparse-switch

    :pswitch_data_2c16
    .packed-switch 0x0
        :pswitch_13aa
        :pswitch_1375
        :pswitch_1352
        :pswitch_132e
        :pswitch_12f9
        :pswitch_12c3
        :pswitch_1247
        :pswitch_1212
        :pswitch_11a8
        :pswitch_113e
        :pswitch_10f1
        :pswitch_1071
        :pswitch_103c
        :pswitch_101d
        :pswitch_fea
        :pswitch_fb2
        :pswitch_f8e
    .end packed-switch

    :sswitch_data_2c3c
    .sparse-switch
        -0x657fd646 -> :sswitch_14d3
        -0x5d9fe8ab -> :sswitch_14c7
        -0x5c7edb84 -> :sswitch_14ba
        -0x4bfd3947 -> :sswitch_14ad
        -0x38cefab6 -> :sswitch_14a0
        -0x36978d55 -> :sswitch_1495
        -0x34742384 -> :sswitch_148a
        -0x2d47f4e1 -> :sswitch_147e
        -0x2b582cae -> :sswitch_1472
        0x3e05fd -> :sswitch_1466
        0x7ed85f2 -> :sswitch_1459
        0x2ea4b8a5 -> :sswitch_144c
        0x3593cbd4 -> :sswitch_1440
        0x3d337bfd -> :sswitch_1434
        0x4ef9c1f9 -> :sswitch_1428
        0x64034c9f -> :sswitch_141b
        0x71560275 -> :sswitch_140e
        0x77163a49 -> :sswitch_1402
        0x7e3d73d9 -> :sswitch_13f7
    .end sparse-switch

    :pswitch_data_2c8a
    .packed-switch 0x0
        :pswitch_1855
        :pswitch_181f
        :pswitch_17ee
        :pswitch_17ba
        :pswitch_1787
        :pswitch_1763
        :pswitch_173f
        :pswitch_1709
        :pswitch_16e5
        :pswitch_16af
        :pswitch_168b
        :pswitch_1649
        :pswitch_15fc
        :pswitch_15cb
        :pswitch_15a7
        :pswitch_1574
        :pswitch_1550
        :pswitch_1505
        :pswitch_14e6
    .end packed-switch

    :sswitch_data_2cb4
    .sparse-switch
        -0x4e857510 -> :sswitch_1912
        -0x1c894ef7 -> :sswitch_1906
        -0xe2e3396 -> :sswitch_18f9
        -0x9b47ac1 -> :sswitch_18ec
        0x17f43207 -> :sswitch_18e0
        0x234b9a81 -> :sswitch_18d3
        0x48803b14 -> :sswitch_18c7
        0x4e20b298 -> :sswitch_18bb
        0x60a98cb9 -> :sswitch_18b0
        0x65054427 -> :sswitch_18a4
        0x75f9239b -> :sswitch_1898
    .end sparse-switch

    :pswitch_data_2ce2
    .packed-switch 0x0
        :pswitch_1c12
        :pswitch_1bdb
        :pswitch_1bb7
        :pswitch_1b51
        :pswitch_1b1f
        :pswitch_1a9b
        :pswitch_1a53
        :pswitch_1a2f
        :pswitch_19c9
        :pswitch_1945
        :pswitch_1924
    .end packed-switch

    :sswitch_data_2cfc
    .sparse-switch
        -0x7f91d479 -> :sswitch_1ce6
        -0x7c284bba -> :sswitch_1cda
        -0x6f335556 -> :sswitch_1cce
        -0x4cb7d87b -> :sswitch_1cc1
        -0x2d0cb7a5 -> :sswitch_1cb5
        0xdc5fecf -> :sswitch_1ca9
        0x33b94bbf -> :sswitch_1c9d
        0x367ce700 -> :sswitch_1c90
        0x465482c9 -> :sswitch_1c84
        0x552e154b -> :sswitch_1c78
        0x69712d6f -> :sswitch_1c6b
        0x6ab4c78e -> :sswitch_1c5e
    .end sparse-switch

    :pswitch_data_2d2e
    .packed-switch 0x0
        :pswitch_1ed9
        :pswitch_1eb5
        :pswitch_1e91
        :pswitch_1e6d
        :pswitch_1e49
        :pswitch_1e25
        :pswitch_1df3
        :pswitch_1dc1
        :pswitch_1d8f
        :pswitch_1d5d
        :pswitch_1d29
        :pswitch_1cf7
    .end packed-switch

    :pswitch_data_2d4a
    .packed-switch 0x0
        :pswitch_1ff7
        :pswitch_1f92
        :pswitch_1f6e
    .end packed-switch

    :sswitch_data_2d54
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_2076
        -0x3ecb9a99 -> :sswitch_206b
        0x3ba3e2f0 -> :sswitch_205f
        0x62658647 -> :sswitch_2053
        0x6f38e3dc -> :sswitch_2047
    .end sparse-switch

    :pswitch_data_2d6a
    .packed-switch 0x0
        :pswitch_2134
        :pswitch_20fc
        :pswitch_20d8
        :pswitch_20a7
        :pswitch_2088
    .end packed-switch

    :sswitch_data_2d78
    .sparse-switch
        -0x7f682541 -> :sswitch_21ed
        -0x6f783fb9 -> :sswitch_21e0
        -0x51cc33cc -> :sswitch_21d4
        -0x4d8cc16d -> :sswitch_21c8
        -0x3d0bb61b -> :sswitch_21bc
        -0x3c6ca389 -> :sswitch_21b1
        -0x3c036018 -> :sswitch_21a5
        -0x3bc628df -> :sswitch_2199
        -0x374aace4 -> :sswitch_218c
        0x6305badd -> :sswitch_217f
        0x692685a1 -> :sswitch_2173
    .end sparse-switch

    :pswitch_data_2da6
    .packed-switch 0x0
        :pswitch_23f5
        :pswitch_23bb
        :pswitch_237e
        :pswitch_2348
        :pswitch_22ee
        :pswitch_22d2
        :pswitch_22ae
        :pswitch_228a
        :pswitch_2266
        :pswitch_2233
        :pswitch_2200
    .end packed-switch

    :sswitch_data_2dc0
    .sparse-switch
        -0x74ddc0dd -> :sswitch_2492
        -0x67f870ad -> :sswitch_2485
        -0x499a7018 -> :sswitch_2478
        -0x364e80b3 -> :sswitch_246b
        0x9515810 -> :sswitch_245e
        0x78a801b7 -> :sswitch_2451
    .end sparse-switch

    :pswitch_data_2dda
    .packed-switch 0x0
        :pswitch_2557
        :pswitch_2533
        :pswitch_250f
        :pswitch_24eb
        :pswitch_24c7
        :pswitch_24a3
    .end packed-switch

    :sswitch_data_2dea
    .sparse-switch
        -0x74fa9afd -> :sswitch_25eb
        -0x5319be4a -> :sswitch_25e0
        -0x4ebf90df -> :sswitch_25d4
        -0x3ce44687 -> :sswitch_25c8
        -0x3a6a65ad -> :sswitch_25bc
        -0x103e8c3d -> :sswitch_25b0
        0x292f3f94 -> :sswitch_25a4
        0x2eef3494 -> :sswitch_2599
        0x65788769 -> :sswitch_258d
        0x7d586159 -> :sswitch_2582
    .end sparse-switch

    :pswitch_data_2e14
    .packed-switch 0x0
        :pswitch_27ad
        :pswitch_278e
        :pswitch_274b
        :pswitch_2716
        :pswitch_26ce
        :pswitch_26a4
        :pswitch_2673
        :pswitch_2658
        :pswitch_263a
        :pswitch_25fe
    .end packed-switch

    :sswitch_data_2e2c
    .sparse-switch
        -0x625ba203 -> :sswitch_2854
        -0x534f8be2 -> :sswitch_2848
        -0x5319be4a -> :sswitch_283d
        -0x4ebf90df -> :sswitch_2831
        -0x11927f68 -> :sswitch_2824
        0x52d2774 -> :sswitch_2818
        0x3670f097 -> :sswitch_280c
        0x3962d1ce -> :sswitch_2801
        0x6422cbe9 -> :sswitch_27f5
    .end sparse-switch

    :pswitch_data_2e52
    .packed-switch 0x0
        :pswitch_29ea
        :pswitch_29a2
        :pswitch_295a
        :pswitch_2936
        :pswitch_2912
        :pswitch_28e1
        :pswitch_28ae
        :pswitch_288a
        :pswitch_2866
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
