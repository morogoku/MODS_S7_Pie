.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final ENTERPRISELICENSE:I = 0x15

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseLicenseService"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

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

.method private getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3f

    packed-switch v1, :pswitch_data_7a

    goto :goto_77

    :pswitch_17
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v1, "SecContentProvider2"

    const-string/jumbo v2, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v1, "SecContentProvider2"

    const-string/jumbo v2, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_77

    :cond_4b
    const-string/jumbo v1, "eas_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v1, :cond_77

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_76

    const-string/jumbo v4, "setAccountEmailPassword"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v5, "password"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    :cond_76
    nop

    :cond_77
    :goto_77
    return-object v3

    nop

    nop

    :pswitch_data_7a
    .packed-switch 0xe
        :pswitch_2b
        :pswitch_17
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v0, "SecContentProvider2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "query(), uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v11, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " selection = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecContentProvider2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "called from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v16, 0x6

    const/4 v10, 0x5

    const/16 v17, 0x4

    const/4 v11, 0x3

    const/16 v18, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_3270

    :pswitch_67
    goto/16 :goto_326e

    :pswitch_69
    const-string/jumbo v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v0, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x60245cde

    if-eq v10, v11, :cond_7e

    goto :goto_89

    :cond_7e
    const-string/jumbo v10, "isServiceAvailable"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_89

    move/from16 v18, v15

    :cond_89
    :goto_89
    if-eqz v18, :cond_93

    const-string v10, "SecContentProvider2"

    const-string v11, "ENTERPRISELICENSEPOLICY : return null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_93
    if-eqz v4, :cond_bf

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gt v10, v14, :cond_9c

    goto :goto_bf

    :cond_9c
    aget-object v10, v4, v15

    aget-object v11, v4, v14

    invoke-virtual {v0, v10, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isServiceAvailable"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    nop

    return-object v8

    :cond_bf
    :goto_bf
    return-object v13

    :pswitch_c0
    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_326e

    if-eqz v3, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_329e

    goto/16 :goto_176

    :sswitch_d6
    const-string/jumbo v10, "isWifiScanningAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    const/16 v19, 0xc

    goto/16 :goto_178

    :sswitch_e3
    const-string/jumbo v10, "getAllowUserProfiles"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    move/from16 v19, v14

    goto/16 :goto_178

    :sswitch_f0
    const-string/jumbo v10, "getAllSsidBlacklist"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    const/16 v19, 0x9

    goto/16 :goto_178

    :sswitch_fd
    const-string/jumbo v10, "isWifiApSettingUserModificationAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    move/from16 v19, v16

    goto/16 :goto_178

    :sswitch_10a
    const-string/jumbo v10, "getAutomaticConnectionToWifi"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    move/from16 v19, v12

    goto :goto_178

    :sswitch_116
    const-string/jumbo v10, "getPromptCredentialsEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    move/from16 v19, v17

    goto :goto_178

    :sswitch_122
    const-string/jumbo v10, "getAllowUserPolicyChanges"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    move/from16 v19, v15

    goto :goto_178

    :sswitch_12e
    const-string/jumbo v10, "isWifiSsidRestrictionActive"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    const/16 v19, 0xb

    goto :goto_178

    :sswitch_13a
    const-string/jumbo v10, "isOpenWifiApAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    const/16 v19, 0x8

    goto :goto_178

    :sswitch_146
    const-string/jumbo v10, "getPasswordHidden"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    move/from16 v19, v11

    goto :goto_178

    :sswitch_152
    const-string/jumbo v10, "getAllSsidWhitelist"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    const/16 v19, 0xa

    goto :goto_178

    :sswitch_15e
    const-string/jumbo v11, "isEnterpriseNetwork"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_176

    move/from16 v19, v10

    goto :goto_178

    :sswitch_16a
    const-string/jumbo v10, "isWifiStateChangeAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_176

    const/16 v19, 0x7

    goto :goto_178

    :cond_176
    :goto_176
    move/from16 v19, v18

    :goto_178
    packed-switch v19, :pswitch_data_32d4

    return-object v13

    :pswitch_17c
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiScanningAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_19f
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiSsidRestrictionActive"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_1c2
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidWhitelist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllSsidWhitelist"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v10, :cond_213

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_213

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1e4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3d6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "SecContentProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WIFIPOLICY_ALLSSIDWHITELIST_METHOD = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_1e4

    :cond_213
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_21c
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidBlacklist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllSsidBlacklist"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v10, :cond_26a

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_26a

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_23e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3d6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "SecContentProvider2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WIFIPOLICY_ALLSSIDBLACKLIST_METHOD = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_23e

    :cond_26a
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_273
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isOpenWifiApAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_298
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiStateChangeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_2bd
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiApSettingUserModificationAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_2e2
    if-eqz v4, :cond_30e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gtz v10, :cond_2eb

    goto :goto_30e

    :cond_2eb
    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isEnterpriseNetwork"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :cond_30e
    :goto_30e
    return-object v13

    :pswitch_30f
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getPromptCredentialsEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_334
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getPasswordHidden"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3d6

    :pswitch_359
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAutomaticConnectionToWifi"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3d6

    :pswitch_37d
    if-eqz v4, :cond_3b1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gtz v10, :cond_386

    goto :goto_3b1

    :cond_386
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v0, v10, v11, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllowUserProfiles"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3d6

    :cond_3b1
    :goto_3b1
    return-object v13

    :pswitch_3b2
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllowUserPolicyChanges"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_3d6
    :goto_3d6
    return-object v8

    :pswitch_3d7
    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    if-eqz v0, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v14, 0x20839282

    if-eq v10, v14, :cond_41b

    const v14, 0x20e4e472

    if-eq v10, v14, :cond_410

    const v14, 0x528665ad

    if-eq v10, v14, :cond_406

    const v11, 0x75693779

    if-eq v10, v11, :cond_3fb

    goto :goto_425

    :cond_3fb
    const-string/jumbo v10, "isUserChangeProfilesAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_425

    move v11, v12

    goto :goto_427

    :cond_406
    const-string/jumbo v10, "isUserSetAlwaysOnAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_425

    goto :goto_427

    :cond_410
    const-string/jumbo v10, "isUserAddProfilesAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_425

    const/4 v11, 0x1

    goto :goto_427

    :cond_41b
    const-string v10, "checkRacoonSecurity"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_425

    const/4 v11, 0x0

    goto :goto_427

    :cond_425
    :goto_425
    move/from16 v11, v18

    :goto_427
    packed-switch v11, :pswitch_data_32f2

    return-object v13

    :pswitch_42b
    const/4 v10, 0x0

    if-eqz v4, :cond_43b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_43b

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    :cond_43b
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v11, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUserSetAlwaysOnAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4f4

    :pswitch_460
    const/4 v10, 0x0

    if-eqz v4, :cond_470

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_470

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    :cond_470
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v11, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUserChangeProfilesAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4f4

    :pswitch_494
    const/4 v10, 0x0

    if-eqz v4, :cond_4a4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_4a4

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    :cond_4a4
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v11, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUserAddProfilesAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4f4

    :pswitch_4c8
    if-eqz v4, :cond_4f6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gtz v10, :cond_4d1

    goto :goto_4f6

    :cond_4d1
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result v11

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v12, "checkRacoonSecurity"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_4f4
    move v10, v11

    return-object v8

    :cond_4f6
    :goto_4f6
    return-object v13

    :pswitch_4f7
    const-string/jumbo v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-eqz v0, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_32fe

    goto/16 :goto_5ed

    :sswitch_50b
    const-string v10, "checkEnableUseOfPacketData"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    move v10, v12

    goto/16 :goto_5ef

    :sswitch_516
    const-string/jumbo v10, "isOutgoingSmsAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    move/from16 v10, v16

    goto/16 :goto_5ef

    :sswitch_523
    const-string v10, "canIncomingCall"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0xe

    goto/16 :goto_5ef

    :sswitch_52f
    const-string/jumbo v14, "isLimitNumberOfSmsEnabled"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5ed

    goto/16 :goto_5ef

    :sswitch_53a
    const-string/jumbo v10, "isSimLockedByAdmin"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0x10

    goto/16 :goto_5ef

    :sswitch_547
    const-string v10, "canOutgoingSms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/4 v10, 0x7

    goto/16 :goto_5ef

    :sswitch_552
    const-string/jumbo v10, "getDisclaimerText"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0x11

    goto/16 :goto_5ef

    :sswitch_55f
    const-string v10, "canOutgoingCall"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0xf

    goto/16 :goto_5ef

    :sswitch_56b
    const-string v10, "canIncomingSms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    move/from16 v10, v17

    goto/16 :goto_5ef

    :sswitch_577
    const-string/jumbo v10, "isCopyContactToSimAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/4 v10, 0x0

    goto/16 :goto_5ef

    :sswitch_583
    const-string/jumbo v10, "isIncomingMmsAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0x8

    goto :goto_5ef

    :sswitch_58f
    const-string/jumbo v10, "isBlockSmsWithStorageEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/4 v10, 0x1

    goto :goto_5ef

    :sswitch_59a
    const-string/jumbo v10, "isRCSEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0x12

    goto :goto_5ef

    :sswitch_5a6
    const-string/jumbo v10, "isCallerIDDisplayAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0xc

    goto :goto_5ef

    :sswitch_5b2
    const-string/jumbo v10, "getEmergencyCallOnly"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0xb

    goto :goto_5ef

    :sswitch_5be
    const-string/jumbo v10, "isOutgoingMmsAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0xa

    goto :goto_5ef

    :sswitch_5ca
    const-string/jumbo v10, "isIncomingSmsAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0x9

    goto :goto_5ef

    :sswitch_5d6
    const-string/jumbo v10, "isWapPushAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    const/16 v10, 0xd

    goto :goto_5ef

    :sswitch_5e2
    const-string/jumbo v10, "isBlockMmsWithStorageEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ed

    move v10, v11

    goto :goto_5ef

    :cond_5ed
    :goto_5ed
    move/from16 v10, v18

    :goto_5ef
    packed-switch v10, :pswitch_data_334c

    const-string v2, "SecContentProvider2"

    const-string/jumbo v10, "return null"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_5fb
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-eqz v4, :cond_649

    if-ge v10, v11, :cond_604

    goto :goto_649

    :cond_604
    const/4 v11, 0x0

    aget-object v13, v4, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v14, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v14, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v14, v11, v13}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v14

    if-eqz v14, :cond_62c

    new-instance v15, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v15, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v15, v11, v13, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v14

    :cond_62c
    new-instance v15, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "isRCSEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v15

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v2, v16

    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :cond_649
    :goto_649
    return-object v13

    :pswitch_64a
    const/4 v2, 0x0

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getDisclaimerText"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_66c
    const/4 v11, 0x0

    if-eqz v4, :cond_698

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_676

    goto :goto_698

    :cond_676
    aget-object v2, v4, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSimLockedByAdmin"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :cond_698
    :goto_698
    return-object v13

    :pswitch_699
    if-eqz v4, :cond_6c4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_6a2

    goto :goto_6c4

    :cond_6a2
    const/4 v2, 0x0

    aget-object v10, v4, v2

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "canOutgoingCall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :cond_6c4
    :goto_6c4
    return-object v13

    :pswitch_6c5
    if-eqz v4, :cond_6f0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_6ce

    goto :goto_6f0

    :cond_6ce
    const/4 v2, 0x0

    aget-object v10, v4, v2

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "canIncomingCall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :cond_6f0
    :goto_6f0
    return-object v13

    :pswitch_6f1
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isWapPushAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_716
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCallerIDDisplayAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_73b
    const/4 v10, 0x1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getEmergencyCallOnly"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_760
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOutgoingMmsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_785
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIncomingSmsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_7aa
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIncomingMmsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_7cf
    if-eqz v4, :cond_7e1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_7d8

    goto :goto_7e1

    :cond_7d8
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_90a

    :cond_7e1
    :goto_7e1
    return-object v13

    :pswitch_7e2
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOutgoingSmsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_807
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLimitNumberOfSmsEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_82c
    if-eqz v4, :cond_857

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_835

    goto :goto_857

    :cond_835
    const/4 v2, 0x0

    aget-object v10, v4, v2

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "canIncomingSms"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :cond_857
    :goto_857
    return-object v13

    :pswitch_858
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBlockMmsWithStorageEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_90a

    :pswitch_87d
    const/4 v2, 0x0

    if-eqz v4, :cond_88d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_88d

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_88d
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v12, "checkEnableUseOfPacketData"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_90a

    :pswitch_8ab
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBlockSmsWithStorageEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_90a

    :pswitch_8cf
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCopyContactToSimAllowed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCopyContactToSimAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_90a
    return-object v8

    :pswitch_90b
    const-string/jumbo v0, "multi_user_manager_service"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    if-eqz v2, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v10, -0xa355b0c

    if-eq v0, v10, :cond_950

    const v10, -0x7ddb46f

    if-eq v0, v10, :cond_945

    const v10, 0x9914b0

    if-eq v0, v10, :cond_93a

    const v10, 0x274445b6

    if-eq v0, v10, :cond_930

    goto :goto_95b

    :cond_930
    const-string/jumbo v0, "multipleUsersSupported"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95b

    goto :goto_95d

    :cond_93a
    const-string/jumbo v0, "multipleUsersAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95b

    const/4 v11, 0x0

    goto :goto_95d

    :cond_945
    const-string/jumbo v0, "isUserRemovalAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95b

    move v11, v12

    goto :goto_95d

    :cond_950
    const-string/jumbo v0, "isUserCreationAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95b

    const/4 v11, 0x1

    goto :goto_95d

    :cond_95b
    :goto_95b
    move/from16 v11, v18

    :goto_95d
    packed-switch v11, :pswitch_data_3376

    return-object v13

    :pswitch_961
    :try_start_961
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_96a
    .catch Landroid/os/RemoteException; {:try_start_961 .. :try_end_96a} :catch_985

    nop

    nop

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    new-array v10, v11, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a31

    :catch_985
    move-exception v0

    return-object v13

    :pswitch_987
    const/4 v0, 0x0

    if-eqz v4, :cond_997

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_997

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_997
    move v10, v0

    :try_start_998
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_9a1
    .catch Landroid/os/RemoteException; {:try_start_998 .. :try_end_9a1} :catch_9bf

    nop

    nop

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUserRemovalAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a31

    :catch_9bf
    move-exception v0

    return-object v13

    :pswitch_9c1
    const/4 v0, 0x0

    if-eqz v4, :cond_9d1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_9d1

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_9d1
    move v10, v0

    :try_start_9d2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_9db
    .catch Ljava/lang/Exception; {:try_start_9d2 .. :try_end_9db} :catch_9f8

    nop

    nop

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUserCreationAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_a31

    :catch_9f8
    move-exception v0

    return-object v13

    :pswitch_9fa
    const/4 v0, 0x0

    if-eqz v4, :cond_a0a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_a0a

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_a0a
    move v10, v0

    :try_start_a0b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0
    :try_end_a14
    .catch Landroid/os/RemoteException; {:try_start_a0b .. :try_end_a14} :catch_a32

    nop

    nop

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "multipleUsersAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_a31
    return-object v8

    :catch_a32
    move-exception v0

    return-object v13

    :pswitch_a34
    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v0, :cond_326e

    if-eqz v3, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v10, -0x7cedec35

    if-eq v2, v10, :cond_a5c

    const v10, 0x30468cc8

    if-eq v2, v10, :cond_a50

    goto :goto_a67

    :cond_a50
    const-string/jumbo v2, "isNFCStateChangeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a67

    const/16 v18, 0x1

    goto :goto_a67

    :cond_a5c
    const-string/jumbo v2, "getCurrentLockScreenString"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a67

    const/16 v18, 0x0

    :cond_a67
    :goto_a67
    packed-switch v18, :pswitch_data_3382

    return-object v13

    :pswitch_a6b
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNFCStateChangeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_aaa

    :pswitch_a8a
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getCurrentLockScreenString"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_aaa
    return-object v8

    :pswitch_aab
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v7

    if-eqz v7, :cond_14a6

    if-eqz v3, :cond_14a6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_338a

    goto/16 :goto_cce

    :sswitch_abc
    const-string/jumbo v0, "getScreenOffOnStatusBarDoubleTapState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0xc

    goto/16 :goto_cd0

    :sswitch_ac9
    const-string/jumbo v0, "getVolumeButtonRotationState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x9

    goto/16 :goto_cd0

    :sswitch_ad6
    const-string/jumbo v0, "getSealedHideNotificationMessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    move/from16 v10, v16

    goto/16 :goto_cd0

    :sswitch_ae3
    const-string/jumbo v0, "getSealedPowerDialogCustomItemsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    move v10, v12

    goto/16 :goto_cd0

    :sswitch_aef
    const-string/jumbo v0, "getSettingsEnabledItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x1d

    goto/16 :goto_cd0

    :sswitch_afc
    const-string/jumbo v0, "getLoadingLogoPath"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x26

    goto/16 :goto_cd0

    :sswitch_b09
    const-string/jumbo v0, "getRecentLongPressMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x8

    goto/16 :goto_cd0

    :sswitch_b16
    const-string/jumbo v0, "getWifiAutoSwitchThreshold"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0xe

    goto/16 :goto_cd0

    :sswitch_b23
    const-string/jumbo v0, "getScreenOffOnHomeLongPressState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0xb

    goto/16 :goto_cd0

    :sswitch_b30
    const-string/jumbo v0, "getToastGravityYOffset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x16

    goto/16 :goto_cd0

    :sswitch_b3d
    const-string/jumbo v0, "getToastShowPackageNameState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x12

    goto/16 :goto_cd0

    :sswitch_b4a
    const-string/jumbo v0, "getToastGravity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x14

    goto/16 :goto_cd0

    :sswitch_b57
    const-string/jumbo v0, "getSealedHardKeyIntentState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x1b

    goto/16 :goto_cd0

    :sswitch_b64
    const-string/jumbo v0, "getSealedNotificationMessagesState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/4 v10, 0x0

    goto/16 :goto_cd0

    :sswitch_b70
    const-string/jumbo v0, "getUsbConnectionTypeInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x1f

    goto/16 :goto_cd0

    :sswitch_b7d
    const-string/jumbo v0, "getUltraPowerSavingPackages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x25

    goto/16 :goto_cd0

    :sswitch_b8a
    const-string/jumbo v0, "getToastEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x11

    goto/16 :goto_cd0

    :sswitch_b97
    const-string/jumbo v0, "getAppBlockDownloadState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x17

    goto/16 :goto_cd0

    :sswitch_ba4
    const-string/jumbo v0, "getToastGravityXOffset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x15

    goto/16 :goto_cd0

    :sswitch_bb1
    const-string/jumbo v0, "getAutoCallNumberDelay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x23

    goto/16 :goto_cd0

    :sswitch_bbe
    const-string/jumbo v0, "getUsbConnectionType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x20

    goto/16 :goto_cd0

    :sswitch_bcb
    const-string/jumbo v0, "getAppBlockDownloadNamespaces"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x18

    goto/16 :goto_cd0

    :sswitch_bd8
    const-string/jumbo v0, "isDexAutoOpenLastApp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x28

    goto/16 :goto_cd0

    :sswitch_be5
    const-string/jumbo v0, "getToastGravityEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x13

    goto/16 :goto_cd0

    :sswitch_bf2
    const-string/jumbo v0, "getAutoCallPickupState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x21

    goto/16 :goto_cd0

    :sswitch_bff
    const-string/jumbo v0, "getAutoCallNumberAnswerMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x24

    goto/16 :goto_cd0

    :sswitch_c0c
    const-string/jumbo v0, "getSealedPowerDialogItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/4 v10, 0x1

    goto/16 :goto_cd0

    :sswitch_c18
    const-string/jumbo v0, "getExtendedCallInfoState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    move/from16 v10, v17

    goto/16 :goto_cd0

    :sswitch_c25
    const-string/jumbo v0, "getEthernetConfigurationType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x1a

    goto/16 :goto_cd0

    :sswitch_c32
    const-string/jumbo v0, "getSealedVolumeKeyAppsList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x1e

    goto/16 :goto_cd0

    :sswitch_c3f
    const-string/jumbo v0, "getSealedVolumeKeyAppState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x1c

    goto/16 :goto_cd0

    :sswitch_c4c
    const-string/jumbo v0, "getLockScreenHiddenItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x10

    goto/16 :goto_cd0

    :sswitch_c59
    const-string/jumbo v0, "getAirGestureOptionState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x27

    goto/16 :goto_cd0

    :sswitch_c66
    const-string/jumbo v0, "getSealedPowerDialogCustomItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    move v10, v11

    goto :goto_cd0

    :sswitch_c71
    const-string/jumbo v0, "getWifiAutoSwitchState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0xd

    goto :goto_cd0

    :sswitch_c7d
    const-string/jumbo v0, "getSettingsHiddenState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    goto :goto_cd0

    :sswitch_c87
    const-string/jumbo v0, "getWifiAutoSwitchDelay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0xf

    goto :goto_cd0

    :sswitch_c93
    const-string/jumbo v0, "getRecentLongPressActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/4 v10, 0x7

    goto :goto_cd0

    :sswitch_c9e
    const-string/jumbo v0, "getEthernetState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x19

    goto :goto_cd0

    :sswitch_caa
    const-string/jumbo v0, "getAutoCallNumberList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x22

    goto :goto_cd0

    :sswitch_cb6
    const-string/jumbo v0, "getDexHDMIAutoEnter"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0x29

    goto :goto_cd0

    :sswitch_cc2
    const-string/jumbo v0, "getGearNotificationState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cce

    const/16 v10, 0xa

    goto :goto_cd0

    :cond_cce
    :goto_cce
    move/from16 v10, v18

    :goto_cd0
    packed-switch v10, :pswitch_data_3434

    return-object v13

    :pswitch_cd4
    move/from16 v2, v18

    :try_start_cd6
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result v0
    :try_end_cda
    .catch Landroid/os/RemoteException; {:try_start_cd6 .. :try_end_cda} :catch_cdc

    move v2, v0

    goto :goto_ce5

    :catch_cdc
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ce5
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getDexHDMIAutoEnter"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_d00
    move/from16 v2, v18

    :try_start_d02
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v0
    :try_end_d06
    .catch Landroid/os/RemoteException; {:try_start_d02 .. :try_end_d06} :catch_d08

    move v2, v0

    goto :goto_d11

    :catch_d08
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d11
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isDexAutoOpenLastApp"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_d2c
    const/4 v10, 0x1

    const/4 v11, 0x0

    move v2, v10

    :try_start_d2f
    invoke-interface {v7, v11}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result v0
    :try_end_d33
    .catch Landroid/os/RemoteException; {:try_start_d2f .. :try_end_d33} :catch_d35

    move v2, v0

    goto :goto_d3e

    :catch_d35
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3e
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAirGestureOptionState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_d59
    move-object v2, v13

    :try_start_d5a
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object v0
    :try_end_d5e
    .catch Landroid/os/RemoteException; {:try_start_d5a .. :try_end_d5e} :catch_d60

    move-object v2, v0

    goto :goto_d69

    :catch_d60
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d69
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getLoadingLogoPath"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_d80
    move-object v2, v13

    :try_start_d81
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v0
    :try_end_d85
    .catch Landroid/os/RemoteException; {:try_start_d81 .. :try_end_d85} :catch_d87

    move-object v2, v0

    goto :goto_d90

    :catch_d87
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d90
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getUltraPowerSavingPackages"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_dbf

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_dbf

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_da9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dbf

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_da9

    :cond_dbf
    goto/16 :goto_14a5

    :pswitch_dc1
    if-eqz v4, :cond_df8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_dca

    goto :goto_df8

    :cond_dca
    move/from16 v2, v18

    const/4 v10, 0x0

    :try_start_dcd
    aget-object v0, v4, v10

    invoke-interface {v7, v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result v0
    :try_end_dd3
    .catch Landroid/os/RemoteException; {:try_start_dcd .. :try_end_dd3} :catch_dd5

    move v2, v0

    goto :goto_ddd

    :catch_dd5
    move-exception v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ddd
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoCallNumberAnswerMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :cond_df8
    :goto_df8
    nop

    return-object v13

    :pswitch_dfa
    if-eqz v4, :cond_e31

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_e03

    goto :goto_e31

    :cond_e03
    move/from16 v2, v18

    const/4 v10, 0x0

    :try_start_e06
    aget-object v0, v4, v10

    invoke-interface {v7, v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result v0
    :try_end_e0c
    .catch Landroid/os/RemoteException; {:try_start_e06 .. :try_end_e0c} :catch_e0e

    move v2, v0

    goto :goto_e16

    :catch_e0e
    move-exception v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e16
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoCallNumberDelay"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :cond_e31
    :goto_e31
    nop

    return-object v13

    :pswitch_e33
    move-object v2, v13

    :try_start_e34
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object v0
    :try_end_e38
    .catch Landroid/os/RemoteException; {:try_start_e34 .. :try_end_e38} :catch_e3a

    move-object v2, v0

    goto :goto_e43

    :catch_e3a
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e43
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoCallNumberList"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_e72

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e72

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e5c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e72

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_e5c

    :cond_e72
    goto/16 :goto_14a5

    :pswitch_e74
    move/from16 v2, v18

    :try_start_e76
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result v0
    :try_end_e7a
    .catch Landroid/os/RemoteException; {:try_start_e76 .. :try_end_e7a} :catch_e7c

    move v2, v0

    goto :goto_e85

    :catch_e7c
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e85
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoCallPickupState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_ea0
    const/4 v11, 0x0

    move v2, v11

    :try_start_ea2
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result v0
    :try_end_ea6
    .catch Landroid/os/RemoteException; {:try_start_ea2 .. :try_end_ea6} :catch_ea8

    move v2, v0

    goto :goto_eb1

    :catch_ea8
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_eb1
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getUsbConnectionType"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_ecc
    const/4 v11, 0x0

    move v2, v11

    :try_start_ece
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v0
    :try_end_ed2
    .catch Landroid/os/RemoteException; {:try_start_ece .. :try_end_ed2} :catch_ed4

    move v2, v0

    goto :goto_edd

    :catch_ed4
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_edd
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getUsbConnectionTypeInternal"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_ef8
    move-object v2, v13

    :try_start_ef9
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v0
    :try_end_efd
    .catch Landroid/os/RemoteException; {:try_start_ef9 .. :try_end_efd} :catch_eff

    move-object v2, v0

    goto :goto_f08

    :catch_eff
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f08
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedVolumeKeyAppsList"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_f37

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f37

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f37

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f21

    :cond_f37
    goto/16 :goto_14a5

    :pswitch_f39
    const/4 v2, 0x0

    move v10, v2

    :try_start_f3b
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result v0
    :try_end_f3f
    .catch Landroid/os/RemoteException; {:try_start_f3b .. :try_end_f3f} :catch_f41

    move v10, v0

    goto :goto_f4a

    :catch_f41
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f4a
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSettingsEnabledItems"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_f65
    const/4 v11, 0x0

    move v2, v11

    :try_start_f67
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result v0
    :try_end_f6b
    .catch Landroid/os/RemoteException; {:try_start_f67 .. :try_end_f6b} :catch_f6d

    move v2, v0

    goto :goto_f76

    :catch_f6d
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f76
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedVolumeKeyAppState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_f91
    const/4 v11, 0x0

    move v2, v11

    :try_start_f93
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result v0
    :try_end_f97
    .catch Landroid/os/RemoteException; {:try_start_f93 .. :try_end_f97} :catch_f99

    move v2, v0

    goto :goto_fa2

    :catch_f99
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fa2
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedHardKeyIntentState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_fbd
    const/4 v11, 0x0

    move v2, v11

    :try_start_fbf
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    move-result v0
    :try_end_fc3
    .catch Landroid/os/RemoteException; {:try_start_fbf .. :try_end_fc3} :catch_fc6

    move v2, v0

    goto/16 :goto_fcf

    :catch_fc6
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fcf
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getEthernetConfigurationType"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_fea
    const/4 v10, 0x1

    move v2, v10

    :try_start_fec
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    move-result v0
    :try_end_ff0
    .catch Landroid/os/RemoteException; {:try_start_fec .. :try_end_ff0} :catch_ff3

    move v2, v0

    goto/16 :goto_ffc

    :catch_ff3
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ffc
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getEthernetState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_1017
    move-object v2, v13

    :try_start_1018
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object v0
    :try_end_101c
    .catch Landroid/os/RemoteException; {:try_start_1018 .. :try_end_101c} :catch_101f

    move-object v2, v0

    goto/16 :goto_1028

    :catch_101f
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1028
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAppBlockDownloadNamespaces"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_1057

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1057

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1041
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1057

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1041

    :cond_1057
    goto/16 :goto_14a5

    :pswitch_1059
    const/4 v2, 0x0

    move v10, v2

    :try_start_105b
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result v0
    :try_end_105f
    .catch Landroid/os/RemoteException; {:try_start_105b .. :try_end_105f} :catch_1062

    move v10, v0

    goto/16 :goto_106b

    :catch_1062
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_106b
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getAppBlockDownloadState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_1086
    const/4 v11, 0x0

    move v2, v11

    :try_start_1088
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result v0
    :try_end_108c
    .catch Landroid/os/RemoteException; {:try_start_1088 .. :try_end_108c} :catch_108f

    move v2, v0

    goto/16 :goto_1098

    :catch_108f
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1098
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastGravityYOffset"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_10b3
    const/4 v11, 0x0

    move v2, v11

    :try_start_10b5
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result v0
    :try_end_10b9
    .catch Landroid/os/RemoteException; {:try_start_10b5 .. :try_end_10b9} :catch_10bc

    move v2, v0

    goto/16 :goto_10c5

    :catch_10bc
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10c5
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastGravityXOffset"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_10e0
    const/4 v11, 0x0

    move v2, v11

    :try_start_10e2
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result v0
    :try_end_10e6
    .catch Landroid/os/RemoteException; {:try_start_10e2 .. :try_end_10e6} :catch_10e9

    move v2, v0

    goto/16 :goto_10f2

    :catch_10e9
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10f2
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastGravity"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_110d
    const/4 v11, 0x0

    move v2, v11

    :try_start_110f
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result v0
    :try_end_1113
    .catch Landroid/os/RemoteException; {:try_start_110f .. :try_end_1113} :catch_1116

    move v2, v0

    goto/16 :goto_111f

    :catch_1116
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_111f
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastGravityEnabledState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_113a
    const/4 v11, 0x0

    move v2, v11

    :try_start_113c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result v0
    :try_end_1140
    .catch Landroid/os/RemoteException; {:try_start_113c .. :try_end_1140} :catch_1143

    move v2, v0

    goto/16 :goto_114c

    :catch_1143
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_114c
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastShowPackageNameState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_1167
    const/4 v10, 0x1

    move v2, v10

    :try_start_1169
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result v0
    :try_end_116d
    .catch Landroid/os/RemoteException; {:try_start_1169 .. :try_end_116d} :catch_1170

    move v2, v0

    goto/16 :goto_1179

    :catch_1170
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1179
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastEnabledState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_1194
    const/4 v11, 0x0

    move v2, v11

    :try_start_1196
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result v0
    :try_end_119a
    .catch Landroid/os/RemoteException; {:try_start_1196 .. :try_end_119a} :catch_119d

    move v2, v0

    goto/16 :goto_11a6

    :catch_119d
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11a6
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getLockScreenHiddenItems"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_11c1
    const/16 v0, 0x14

    move v2, v0

    :try_start_11c4
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchDelay()I

    move-result v0
    :try_end_11c8
    .catch Landroid/os/RemoteException; {:try_start_11c4 .. :try_end_11c8} :catch_11cb

    move v2, v0

    goto/16 :goto_11d4

    :catch_11cb
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11d4
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getWifiAutoSwitchDelay"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_11ef
    const/16 v0, -0xc8

    move v2, v0

    :try_start_11f2
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchThreshold()I

    move-result v0
    :try_end_11f6
    .catch Landroid/os/RemoteException; {:try_start_11f2 .. :try_end_11f6} :catch_11f9

    move v2, v0

    goto/16 :goto_1202

    :catch_11f9
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1202
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getWifiAutoSwitchThreshold"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_121d
    const/4 v11, 0x0

    move v2, v11

    :try_start_121f
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchState()Z

    move-result v0
    :try_end_1223
    .catch Landroid/os/RemoteException; {:try_start_121f .. :try_end_1223} :catch_1226

    move v2, v0

    goto/16 :goto_122f

    :catch_1226
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_122f
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getWifiAutoSwitchState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_124a
    const/4 v11, 0x0

    move v2, v11

    :try_start_124c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v0
    :try_end_1250
    .catch Landroid/os/RemoteException; {:try_start_124c .. :try_end_1250} :catch_1253

    move v2, v0

    goto/16 :goto_125c

    :catch_1253
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_125c
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getScreenOffOnStatusBarDoubleTapState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_1277
    const/4 v11, 0x0

    move v2, v11

    :try_start_1279
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0
    :try_end_127d
    .catch Landroid/os/RemoteException; {:try_start_1279 .. :try_end_127d} :catch_1280

    move v2, v0

    goto/16 :goto_1289

    :catch_1280
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1289
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getScreenOffOnHomeLongPressState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_12a4
    const/4 v10, 0x1

    move v2, v10

    :try_start_12a6
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v0
    :try_end_12aa
    .catch Landroid/os/RemoteException; {:try_start_12a6 .. :try_end_12aa} :catch_12ad

    move v2, v0

    goto/16 :goto_12b6

    :catch_12ad
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12b6
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getGearNotificationState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_12d1
    const/4 v11, 0x0

    move v2, v11

    :try_start_12d3
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v0
    :try_end_12d7
    .catch Landroid/os/RemoteException; {:try_start_12d3 .. :try_end_12d7} :catch_12da

    move v2, v0

    goto/16 :goto_12e3

    :catch_12da
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12e3
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getVolumeButtonRotationState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_12fe
    move/from16 v2, v18

    :try_start_1300
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    move-result v0
    :try_end_1304
    .catch Landroid/os/RemoteException; {:try_start_1300 .. :try_end_1304} :catch_1307

    move v2, v0

    goto/16 :goto_1310

    :catch_1307
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1310
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getRecentLongPressMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_132b
    move-object v2, v13

    :try_start_132c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v0
    :try_end_1330
    .catch Landroid/os/RemoteException; {:try_start_132c .. :try_end_1330} :catch_1333

    move-object v2, v0

    goto/16 :goto_133c

    :catch_1333
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_133c
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getRecentLongPressActivity"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_1353
    move/from16 v2, v18

    :try_start_1355
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    move-result v0
    :try_end_1359
    .catch Landroid/os/RemoteException; {:try_start_1355 .. :try_end_1359} :catch_135c

    move v2, v0

    goto/16 :goto_1365

    :catch_135c
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1365
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedHideNotificationMessages"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_1380
    const/4 v11, 0x0

    move v2, v11

    :try_start_1382
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result v0
    :try_end_1386
    .catch Landroid/os/RemoteException; {:try_start_1382 .. :try_end_1386} :catch_1389

    move v2, v0

    goto/16 :goto_1392

    :catch_1389
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1392
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSettingsHiddenState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_13ad
    const/4 v11, 0x0

    move v2, v11

    :try_start_13af
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    move-result v0
    :try_end_13b3
    .catch Landroid/os/RemoteException; {:try_start_13af .. :try_end_13b3} :catch_13b6

    move v2, v0

    goto/16 :goto_13bf

    :catch_13b6
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13bf
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getExtendedCallInfoState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_13da
    move-object v2, v13

    :try_start_13db
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0
    :try_end_13df
    .catch Landroid/os/RemoteException; {:try_start_13db .. :try_end_13df} :catch_13e2

    move-object v2, v0

    goto/16 :goto_13eb

    :catch_13e2
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13eb
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedPowerDialogCustomItems"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_141e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_141e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1404
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_141e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/custom/PowerItem;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    invoke-virtual {v10}, Lcom/samsung/android/knox/custom/PowerItem;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1404

    :cond_141e
    goto/16 :goto_14a5

    :pswitch_1420
    const/4 v2, 0x0

    move v10, v2

    :try_start_1422
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result v0
    :try_end_1426
    .catch Landroid/os/RemoteException; {:try_start_1422 .. :try_end_1426} :catch_1429

    move v10, v0

    goto/16 :goto_1432

    :catch_1429
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1432
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedPowerDialogCustomItemsState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_14a5

    :pswitch_144c
    move/from16 v2, v18

    :try_start_144e
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result v0
    :try_end_1452
    .catch Landroid/os/RemoteException; {:try_start_144e .. :try_end_1452} :catch_1455

    move v2, v0

    goto/16 :goto_145e

    :catch_1455
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_145e
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedPowerDialogItems"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14a5

    :pswitch_1479
    const/4 v10, 0x1

    move v2, v10

    :try_start_147b
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z

    move-result v0
    :try_end_147f
    .catch Landroid/os/RemoteException; {:try_start_147b .. :try_end_147f} :catch_1482

    move v2, v0

    goto/16 :goto_148b

    :catch_1482
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_148b
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedNotificationMessagesState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_14a5
    return-object v0

    :cond_14a6
    goto/16 :goto_326e

    :pswitch_14a8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v7

    if-eqz v7, :cond_1b3e

    if-eqz v3, :cond_1b3e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_348c

    goto/16 :goto_1610

    :sswitch_14b9
    const-string/jumbo v0, "getSealedUsbNetAddress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0xb

    goto/16 :goto_1612

    :sswitch_14c6
    const-string/jumbo v0, "getSealedStatusBarClockState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/4 v10, 0x7

    goto/16 :goto_1612

    :sswitch_14d2
    const-string/jumbo v0, "getPowerMenuLockedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x19

    goto/16 :goto_1612

    :sswitch_14df
    const-string/jumbo v0, "getVolumePanelEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x13

    goto/16 :goto_1612

    :sswitch_14ec
    const-string/jumbo v0, "getStatusBarTextSize"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x17

    goto/16 :goto_1612

    :sswitch_14f9
    const-string/jumbo v0, "getSealedStatusBarMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    move/from16 v10, v16

    goto/16 :goto_1612

    :sswitch_1506
    const-string/jumbo v0, "getLTESettingState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0xf

    goto/16 :goto_1612

    :sswitch_1513
    const-string/jumbo v0, "getScreenWakeupOnPowerState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0xe

    goto/16 :goto_1612

    :sswitch_1520
    const-string/jumbo v0, "getSealedStatusBarIconsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x8

    goto/16 :goto_1612

    :sswitch_152d
    const-string/jumbo v0, "setSealedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/4 v10, 0x0

    goto/16 :goto_1612

    :sswitch_1539
    const-string/jumbo v0, "getVolumeControlStream"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x14

    goto/16 :goto_1612

    :sswitch_1546
    const-string/jumbo v0, "getSealedUsbNetState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0xa

    goto/16 :goto_1612

    :sswitch_1553
    const-string/jumbo v0, "getStatusBarText"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x15

    goto/16 :goto_1612

    :sswitch_1560
    const-string/jumbo v0, "getSealedUsbMassStorageState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x9

    goto/16 :goto_1612

    :sswitch_156d
    const-string/jumbo v0, "getPowerSavingMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0xc

    goto/16 :goto_1612

    :sswitch_157a
    const-string/jumbo v0, "getUltraPowerSavingPackages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x1a

    goto/16 :goto_1612

    :sswitch_1587
    const-string/jumbo v0, "getTorchOnVolumeButtonsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x18

    goto/16 :goto_1612

    :sswitch_1594
    const-string/jumbo v0, "getInfraredState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x11

    goto/16 :goto_1612

    :sswitch_15a1
    const-string/jumbo v0, "getStatusBarTextStyle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x16

    goto :goto_1612

    :sswitch_15ad
    const-string/jumbo v0, "getSealedExitUI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    move/from16 v10, v17

    goto/16 :goto_1612

    :sswitch_15ba
    const-string/jumbo v0, "getSealedHomeActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    goto/16 :goto_1612

    :sswitch_15c5
    const-string/jumbo v0, "getCallScreenDisabledItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x10

    goto/16 :goto_1612

    :sswitch_15d2
    const-string/jumbo v0, "getSensorDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0x12

    goto/16 :goto_1612

    :sswitch_15df
    const-string/jumbo v0, "getSealedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/4 v10, 0x1

    goto/16 :goto_1612

    :sswitch_15eb
    const-string/jumbo v0, "getSealedPowerDialogOptionMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    move v10, v12

    goto/16 :goto_1612

    :sswitch_15f7
    const-string/jumbo v0, "getSealedModeString"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    move v10, v11

    goto/16 :goto_1612

    :sswitch_1603
    const-string/jumbo v0, "getChargingLEDState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1610

    const/16 v10, 0xd

    goto/16 :goto_1612

    :cond_1610
    :goto_1610
    move/from16 v10, v18

    :goto_1612
    packed-switch v10, :pswitch_data_34fa

    return-object v13

    :pswitch_1616
    move-object v2, v13

    :try_start_1617
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v0
    :try_end_161b
    .catch Landroid/os/RemoteException; {:try_start_1617 .. :try_end_161b} :catch_161e

    move-object v2, v0

    goto/16 :goto_1627

    :catch_161e
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1627
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getUltraPowerSavingPackages"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_1656

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1656

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1640
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1656

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1640

    :cond_1656
    goto/16 :goto_1b3b

    :pswitch_1658
    const/4 v2, 0x1

    move v10, v2

    :try_start_165a
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result v0
    :try_end_165e
    .catch Landroid/os/RemoteException; {:try_start_165a .. :try_end_165e} :catch_1661

    move v10, v0

    goto/16 :goto_166a

    :catch_1661
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_166a
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getPowerMenuLockedState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1685
    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "torchlight_enable"

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1698

    const/4 v0, 0x1

    goto/16 :goto_1699

    :cond_1698
    const/4 v0, 0x0

    :goto_1699
    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getTorchOnVolumeButtonsState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_189f

    :pswitch_16b4
    const/4 v11, 0x0

    move v2, v11

    :try_start_16b6
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result v0
    :try_end_16ba
    .catch Landroid/os/RemoteException; {:try_start_16b6 .. :try_end_16ba} :catch_16bd

    move v2, v0

    goto/16 :goto_16c6

    :catch_16bd
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16c6
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getStatusBarTextSize"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_16e1
    const/4 v11, 0x0

    move v2, v11

    :try_start_16e3
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result v0
    :try_end_16e7
    .catch Landroid/os/RemoteException; {:try_start_16e3 .. :try_end_16e7} :catch_16ea

    move v2, v0

    goto/16 :goto_16f3

    :catch_16ea
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16f3
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getStatusBarTextStyle"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_170e
    move-object v2, v13

    :try_start_170f
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v0
    :try_end_1713
    .catch Landroid/os/RemoteException; {:try_start_170f .. :try_end_1713} :catch_1716

    move-object v2, v0

    goto/16 :goto_171f

    :catch_1716
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_171f
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getStatusBarText"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1736
    const/4 v10, 0x0

    move v2, v10

    :try_start_1738
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result v0
    :try_end_173c
    .catch Landroid/os/RemoteException; {:try_start_1738 .. :try_end_173c} :catch_173f

    move v2, v0

    goto/16 :goto_1748

    :catch_173f
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1748
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getVolumeControlStream"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1763
    const/4 v10, 0x1

    move v2, v10

    :try_start_1765
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result v0
    :try_end_1769
    .catch Landroid/os/RemoteException; {:try_start_1765 .. :try_end_1769} :catch_176c

    move v2, v0

    goto/16 :goto_1775

    :catch_176c
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1775
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getVolumePanelEnabledState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1790
    const/4 v11, 0x0

    move v2, v11

    :try_start_1792
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result v0
    :try_end_1796
    .catch Landroid/os/RemoteException; {:try_start_1792 .. :try_end_1796} :catch_1799

    move v2, v0

    goto/16 :goto_17a2

    :catch_1799
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17a2
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSensorDisabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_17bd
    const/4 v10, 0x1

    move v2, v10

    :try_start_17bf
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result v0
    :try_end_17c3
    .catch Landroid/os/RemoteException; {:try_start_17bf .. :try_end_17c3} :catch_17c6

    move v2, v0

    goto/16 :goto_17cf

    :catch_17c6
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17cf
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getInfraredState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_17ea
    const/4 v11, 0x0

    move v2, v11

    :try_start_17ec
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v0
    :try_end_17f0
    .catch Landroid/os/RemoteException; {:try_start_17ec .. :try_end_17f0} :catch_17f3

    move v2, v0

    goto/16 :goto_17fc

    :catch_17f3
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17fc
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getCallScreenDisabledItems"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1817
    const/4 v11, 0x0

    move v2, v11

    :try_start_1819
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result v0
    :try_end_181d
    .catch Landroid/os/RemoteException; {:try_start_1819 .. :try_end_181d} :catch_1820

    move v2, v0

    goto/16 :goto_1829

    :catch_1820
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1829
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getLTESettingState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1844
    const/4 v10, 0x1

    move v2, v10

    :try_start_1846
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v0
    :try_end_184a
    .catch Landroid/os/RemoteException; {:try_start_1846 .. :try_end_184a} :catch_184d

    move v2, v0

    goto/16 :goto_1856

    :catch_184d
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1856
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getScreenWakeupOnPowerState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1871
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "led_indicator_charing"

    const/4 v10, 0x1

    invoke-static {v0, v2, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1884

    const/4 v0, 0x1

    goto/16 :goto_1885

    :cond_1884
    const/4 v0, 0x0

    :goto_1885
    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getChargingLEDState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_189f
    move-object v0, v2

    goto/16 :goto_1b3b

    :pswitch_18a2
    const/4 v11, 0x0

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v10, "ultra_powersaving_mode"

    invoke-static {v2, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_18b6

    const/4 v0, 0x2

    goto/16 :goto_18cb

    :cond_18b6
    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_switch"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_18ca

    const/4 v0, 0x0

    goto/16 :goto_18cb

    :cond_18ca
    const/4 v0, 0x1

    :goto_18cb
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getPowerSavingMode"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move-object v0, v8

    goto/16 :goto_1b3b

    :pswitch_18e9
    if-eqz v4, :cond_1922

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_18f3

    goto/16 :goto_1922

    :cond_18f3
    const/4 v2, 0x0

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v10, v13

    :try_start_18fb
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0
    :try_end_18ff
    .catch Landroid/os/RemoteException; {:try_start_18fb .. :try_end_18ff} :catch_1902

    move-object v10, v0

    goto/16 :goto_190b

    :catch_1902
    move-exception v0

    move-object v11, v0

    const-string v11, "SecContentProvider2"

    const-string v12, "Failed talking with KnoxCustomManager service"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_190b
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSealedUsbNetAddress"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :cond_1922
    :goto_1922
    nop

    return-object v13

    :pswitch_1924
    const/4 v2, 0x0

    move v10, v2

    :try_start_1926
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    move-result v0
    :try_end_192a
    .catch Landroid/os/RemoteException; {:try_start_1926 .. :try_end_192a} :catch_192d

    move v10, v0

    goto/16 :goto_1936

    :catch_192d
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1936
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedUsbNetState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1951
    const/4 v2, 0x1

    move v10, v2

    :try_start_1953
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result v0
    :try_end_1957
    .catch Landroid/os/RemoteException; {:try_start_1953 .. :try_end_1957} :catch_195a

    move v10, v0

    goto/16 :goto_1963

    :catch_195a
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1963
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedUsbMassStorageState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_197e
    const/4 v2, 0x1

    move v10, v2

    :try_start_1980
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    move-result v0
    :try_end_1984
    .catch Landroid/os/RemoteException; {:try_start_1980 .. :try_end_1984} :catch_1987

    move v10, v0

    goto/16 :goto_1990

    :catch_1987
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1990
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedStatusBarIconsState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_19ab
    const/4 v2, 0x1

    move v10, v2

    :try_start_19ad
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    move-result v0
    :try_end_19b1
    .catch Landroid/os/RemoteException; {:try_start_19ad .. :try_end_19b1} :catch_19b4

    move v10, v0

    goto/16 :goto_19bd

    :catch_19b4
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19bd
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedStatusBarClockState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_19d8
    move v2, v12

    :try_start_19d9
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    move-result v0
    :try_end_19dd
    .catch Landroid/os/RemoteException; {:try_start_19d9 .. :try_end_19dd} :catch_19e0

    move v2, v0

    goto/16 :goto_19e9

    :catch_19e0
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19e9
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedStatusBarMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1a04
    move-object v2, v13

    :try_start_1a05
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v0
    :try_end_1a09
    .catch Landroid/os/RemoteException; {:try_start_1a05 .. :try_end_1a09} :catch_1a0c

    move-object v2, v0

    goto/16 :goto_1a15

    :catch_1a0c
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a15
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedHomeActivity"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1a2c
    const/4 v10, 0x0

    if-eqz v4, :cond_1a65

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1a37

    goto/16 :goto_1a65

    :cond_1a37
    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v10, v13

    :try_start_1a3e
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1a42
    .catch Landroid/os/RemoteException; {:try_start_1a3e .. :try_end_1a42} :catch_1a45

    move-object v10, v0

    goto/16 :goto_1a4e

    :catch_1a45
    move-exception v0

    move-object v11, v0

    const-string v11, "SecContentProvider2"

    const-string v12, "Failed talking with KnoxCustomManager service"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a4e
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSealedExitUI"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :cond_1a65
    :goto_1a65
    nop

    return-object v13

    :pswitch_1a67
    if-eqz v4, :cond_1aa0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1a71

    goto/16 :goto_1aa0

    :cond_1a71
    const/4 v2, 0x0

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v10, v13

    :try_start_1a79
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1a7d
    .catch Landroid/os/RemoteException; {:try_start_1a79 .. :try_end_1a7d} :catch_1a80

    move-object v10, v0

    goto/16 :goto_1a89

    :catch_1a80
    move-exception v0

    move-object v11, v0

    const-string v11, "SecContentProvider2"

    const-string v12, "Failed talking with KnoxCustomManager service"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a89
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSealedModeString"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :cond_1aa0
    :goto_1aa0
    nop

    return-object v13

    :pswitch_1aa2
    move v2, v12

    :try_start_1aa3
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result v0
    :try_end_1aa7
    .catch Landroid/os/RemoteException; {:try_start_1aa3 .. :try_end_1aa7} :catch_1aaa

    move v2, v0

    goto/16 :goto_1ab3

    :catch_1aaa
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1ab3
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedPowerDialogOptionMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1ace
    const/4 v11, 0x0

    move v2, v11

    :try_start_1ad0
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result v0
    :try_end_1ad4
    .catch Landroid/os/RemoteException; {:try_start_1ad0 .. :try_end_1ad4} :catch_1ad7

    move v2, v0

    goto/16 :goto_1ae0

    :catch_1ad7
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with knoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1ae0
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b3b

    :pswitch_1afb
    if-eqz v4, :cond_1b3c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1b06

    goto/16 :goto_1b3c

    :cond_1b06
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    aget-object v11, v4, v2

    move/from16 v2, v18

    :try_start_1b11
    invoke-interface {v7, v10, v11}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result v0
    :try_end_1b15
    .catch Landroid/os/RemoteException; {:try_start_1b11 .. :try_end_1b15} :catch_1b18

    move v2, v0

    goto/16 :goto_1b21

    :catch_1b18
    move-exception v0

    move-object v12, v0

    const-string v12, "SecContentProvider2"

    const-string v13, "Failed talking with KnoxCustomManager service"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b21
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "setSealedState"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v8, v13

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_1b3b
    return-object v0

    :cond_1b3c
    :goto_1b3c
    nop

    return-object v13

    :cond_1b3e
    goto/16 :goto_326e

    :pswitch_1b40
    const-string/jumbo v0, "kioskmode"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    if-eqz v0, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3534

    goto/16 :goto_1c10

    :sswitch_1b54
    const-string/jumbo v2, "isNightClockAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/16 v10, 0x9

    goto/16 :goto_1c12

    :sswitch_1b61
    const-string/jumbo v2, "isInformationStreamAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/16 v10, 0xc

    goto/16 :goto_1c12

    :sswitch_1b6e
    const-string/jumbo v2, "isAirCommandModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    move v10, v11

    goto/16 :goto_1c12

    :sswitch_1b7a
    const-string/jumbo v2, "isAppsEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/16 v10, 0xd

    goto/16 :goto_1c12

    :sswitch_1b87
    const-string/jumbo v2, "isNavigationBarHidden"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/4 v10, 0x0

    goto/16 :goto_1c12

    :sswitch_1b93
    const-string/jumbo v2, "getKioskHomePackage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/16 v10, 0x8

    goto/16 :goto_1c12

    :sswitch_1ba0
    const-string/jumbo v2, "isMultiWindowModeAllowedAsUser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    move v10, v12

    goto/16 :goto_1c12

    :sswitch_1bac
    const-string/jumbo v2, "isAirViewModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    move/from16 v10, v17

    goto/16 :goto_1c12

    :sswitch_1bb9
    const-string/jumbo v2, "getBlockedHwKeysCache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    goto/16 :goto_1c12

    :sswitch_1bc4
    const-string/jumbo v2, "isMultiWindowModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/4 v10, 0x1

    goto/16 :goto_1c12

    :sswitch_1bd0
    const-string/jumbo v2, "isKioskModeEnabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/4 v10, 0x7

    goto/16 :goto_1c12

    :sswitch_1bdc
    const-string/jumbo v2, "isPeopleEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/16 v10, 0xa

    goto/16 :goto_1c12

    :sswitch_1be9
    const-string/jumbo v2, "isEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/16 v10, 0xe

    goto/16 :goto_1c12

    :sswitch_1bf6
    const-string/jumbo v2, "isEdgeLightingAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    const/16 v10, 0xb

    goto/16 :goto_1c12

    :sswitch_1c03
    const-string/jumbo v2, "isTaskManagerAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c10

    move/from16 v10, v16

    goto/16 :goto_1c12

    :cond_1c10
    :goto_1c10
    move/from16 v10, v18

    :goto_1c12
    packed-switch v10, :pswitch_data_3572

    goto/16 :goto_1f55

    :pswitch_1c17
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isEdgeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1c37
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAppsEdgeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1c57
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isInformationStreamAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1c77
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isEdgeLightingAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1c97
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isPeopleEdgeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1cb7
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNightClockAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1cd7
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getKioskHomePackage"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1cf8
    if-nez v4, :cond_1d05

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    goto/16 :goto_1d4e

    :cond_1d05
    const/4 v2, 0x0

    aget-object v10, v4, v2

    array-length v2, v4

    if-lt v2, v12, :cond_1d2a

    const/4 v2, 0x1

    aget-object v11, v4, v2

    const-string/jumbo v2, "emergency"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d2a

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeProcessingOrEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v11, "SecContentProvider2"

    const-string/jumbo v12, "isKioskModeEnabled param EMERGENCY"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d4e

    :cond_1d2a
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v11, "SecContentProvider2"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isKioskModeEnabled param UID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d4e
    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isKioskModeEnabled return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isKioskModeEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1d81
    if-eqz v4, :cond_1db7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1d8b

    goto/16 :goto_1db7

    :cond_1d8b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v2, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isTaskManagerAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :cond_1db7
    :goto_1db7
    return-object v13

    :pswitch_1db8
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getBlockedHwKeysCache"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1dd4
    if-nez v4, :cond_1de1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    goto/16 :goto_1e0f

    :cond_1de1
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirViewModeAllowed uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v4, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e0f
    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirViewModeAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAirViewModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1e42
    if-nez v4, :cond_1e4f

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    goto/16 :goto_1e7d

    :cond_1e4f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirCommandModeAllowed uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v4, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e7d
    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirCommandModeAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAirCommandModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :pswitch_1eb0
    const/4 v10, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_1ef9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v10, :cond_1ebc

    goto/16 :goto_1ef9

    :cond_1ebc
    aget-object v2, v4, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v2

    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMultiWindowModeAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :cond_1ef9
    :goto_1ef9
    return-object v13

    :pswitch_1efa
    if-eqz v4, :cond_1f30

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1f04

    goto/16 :goto_1f30

    :cond_1f04
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v2, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMultiWindowModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f55

    :cond_1f30
    :goto_1f30
    return-object v13

    :pswitch_1f31
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNavigationBarHidden"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_1f55
    return-object v8

    :pswitch_1f56
    const-string/jumbo v0, "eas_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v0, :cond_326e

    if-eqz v3, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3594

    goto/16 :goto_201b

    :sswitch_1f6c
    const-string/jumbo v2, "getMaxEmailHTMLBodyTruncationSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/4 v10, 0x7

    goto/16 :goto_201d

    :sswitch_1f78
    const-string/jumbo v2, "getMaxCalendarAgeFilter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    goto/16 :goto_201d

    :sswitch_1f83
    const-string/jumbo v2, "getMaxEmailBodyTruncationSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    move/from16 v10, v16

    goto/16 :goto_201d

    :sswitch_1f90
    const-string/jumbo v2, "getForceSMIMECertificateForSigning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/16 v10, 0x8

    goto/16 :goto_201d

    :sswitch_1f9d
    const-string/jumbo v2, "isIncomingAttachmentsAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    move v10, v11

    goto/16 :goto_201d

    :sswitch_1fa9
    const-string/jumbo v2, "getForceSMIMECertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    move v10, v12

    goto/16 :goto_201d

    :sswitch_1fb5
    const-string/jumbo v2, "getAccountEmailPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/16 v10, 0xa

    goto/16 :goto_201d

    :sswitch_1fc2
    const-string/jumbo v2, "getRequiredEncryptedMIMEMessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/4 v10, 0x1

    goto/16 :goto_201d

    :sswitch_1fce
    const-string/jumbo v2, "getForceSMIMECertificateForEncryption"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/16 v10, 0x9

    goto/16 :goto_201d

    :sswitch_1fdb
    const-string/jumbo v2, "getAccountCertificatePassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/16 v10, 0xb

    goto/16 :goto_201d

    :sswitch_1fe8
    const-string/jumbo v2, "getRequiredSignedMIMEMessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/4 v10, 0x0

    goto/16 :goto_201d

    :sswitch_1ff4
    const-string/jumbo v2, "getMaxEmailAgeFilter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/16 v10, 0xc

    goto/16 :goto_201d

    :sswitch_2001
    const-string/jumbo v2, "setAccountEmailPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    const/16 v10, 0xd

    goto/16 :goto_201d

    :sswitch_200e
    const-string/jumbo v2, "getIncomingAttachmentSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201b

    move/from16 v10, v17

    goto/16 :goto_201d

    :cond_201b
    :goto_201b
    move/from16 v10, v18

    :goto_201d
    packed-switch v10, :pswitch_data_35ce

    const-string v2, "SecContentProvider2"

    const-string/jumbo v10, "return null"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_2029
    if-eqz v4, :cond_205d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v10, 0x1

    if-ge v2, v10, :cond_2034

    goto/16 :goto_205d

    :cond_2034
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v10

    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "setAccountEmailPassword"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v8, v13

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move-object v8, v2

    goto/16 :goto_231f

    :cond_205d
    :goto_205d
    return-object v13

    :pswitch_205e
    if-eqz v4, :cond_2094

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2068

    goto/16 :goto_2094

    :cond_2068
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaxEmailAgeFilter"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_2094
    :goto_2094
    return-object v13

    :pswitch_2095
    if-eqz v4, :cond_20c7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_209f

    goto/16 :goto_20c7

    :cond_209f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAccountCertificatePassword"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_20c7
    :goto_20c7
    return-object v13

    :pswitch_20c8
    if-eqz v4, :cond_20fa

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_20d2

    goto/16 :goto_20fa

    :cond_20d2
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAccountEmailPassword"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_20fa
    :goto_20fa
    return-object v13

    :pswitch_20fb
    if-eqz v4, :cond_2131

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2105

    goto/16 :goto_2131

    :cond_2105
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getForceSMIMECertificateForEncryption"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_2131
    :goto_2131
    return-object v13

    :pswitch_2132
    if-eqz v4, :cond_2168

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_213c

    goto/16 :goto_2168

    :cond_213c
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getForceSMIMECertificateForSigning"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_2168
    :goto_2168
    return-object v13

    :pswitch_2169
    if-eqz v4, :cond_219f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2173

    goto/16 :goto_219f

    :cond_2173
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaxEmailHTMLBodyTruncationSize"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_219f
    :goto_219f
    return-object v13

    :pswitch_21a0
    if-eqz v4, :cond_21d6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_21aa

    goto/16 :goto_21d6

    :cond_21aa
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaxEmailBodyTruncationSize"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_21d6
    :goto_21d6
    return-object v13

    :pswitch_21d7
    if-eqz v4, :cond_220d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_21e1

    goto/16 :goto_220d

    :cond_21e1
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaxCalendarAgeFilter"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_220d
    :goto_220d
    return-object v13

    :pswitch_220e
    if-eqz v4, :cond_2244

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2218

    goto/16 :goto_2244

    :cond_2218
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getIncomingAttachmentSize"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_2244
    :goto_2244
    return-object v13

    :pswitch_2245
    if-eqz v4, :cond_227b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_224f

    goto/16 :goto_227b

    :cond_224f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIncomingAttachmentsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_227b
    :goto_227b
    return-object v13

    :pswitch_227c
    if-eqz v4, :cond_22b2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2286

    goto/16 :goto_22b2

    :cond_2286
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getForceSMIMECertificate"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_22b2
    :goto_22b2
    return-object v13

    :pswitch_22b3
    if-eqz v4, :cond_22e9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_22bd

    goto/16 :goto_22e9

    :cond_22bd
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getRequiredEncryptedMIMEMessages"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_231f

    :cond_22e9
    :goto_22e9
    return-object v13

    :pswitch_22ea
    if-eqz v4, :cond_2320

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_22f4

    goto/16 :goto_2320

    :cond_22f4
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getRequiredSignedMIMEMessages"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_231f
    return-object v8

    :cond_2320
    :goto_2320
    return-object v13

    :pswitch_2321
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v2

    if-eqz v2, :cond_326e

    if-eqz v3, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_35ee

    goto/16 :goto_23c1

    :sswitch_2332
    const-string/jumbo v0, "isAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    move/from16 v19, v11

    goto/16 :goto_23c3

    :sswitch_233f
    const-string/jumbo v0, "getRemoveWarning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    move/from16 v19, v12

    goto/16 :goto_23c3

    :sswitch_234c
    const-string/jumbo v0, "removeActiveAdmin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    move/from16 v19, v10

    goto/16 :goto_23c3

    :sswitch_2359
    const-string/jumbo v0, "setActiveAdmin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    move/from16 v19, v17

    goto/16 :goto_23c3

    :sswitch_2366
    const-string/jumbo v0, "isMdmAdminPresent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    const/16 v19, 0x9

    goto/16 :goto_23c3

    :sswitch_2373
    const-string/jumbo v0, "getEnterpriseSdkVer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    const/16 v19, 0xa

    goto/16 :goto_23c3

    :sswitch_2380
    const-string/jumbo v0, "getAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    const/16 v19, 0x0

    goto/16 :goto_23c3

    :sswitch_238d
    const-string/jumbo v0, "updateAdminPermissions"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    const/16 v19, 0x7

    goto/16 :goto_23c3

    :sswitch_239a
    const-string/jumbo v0, "getActiveAdmins"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    const/16 v19, 0x1

    goto/16 :goto_23c3

    :sswitch_23a7
    const-string/jumbo v0, "setAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    move/from16 v19, v16

    goto/16 :goto_23c3

    :sswitch_23b4
    const-string/jumbo v0, "getMyKnoxAdmin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c1

    const/16 v19, 0x8

    goto/16 :goto_23c3

    :cond_23c1
    :goto_23c1
    move/from16 v19, v18

    :goto_23c3
    packed-switch v19, :pswitch_data_361c

    goto/16 :goto_2589

    :pswitch_23c8
    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getEnterpriseSdkVer"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2589

    :pswitch_23ea
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_23ee
    invoke-virtual {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v0

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-direct {v12, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    new-array v12, v13, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_240a
    .catchall {:try_start_23ee .. :try_end_240a} :catchall_2411

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    goto/16 :goto_2589

    :catchall_2411
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_2416
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMyKnoxAdmin"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2589

    :pswitch_2437
    goto/16 :goto_2589

    :pswitch_2439
    const/4 v10, 0x1

    if-eqz v4, :cond_2471

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_2444

    goto/16 :goto_2471

    :cond_2444
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    aget-object v12, v4, v10

    invoke-virtual {v2, v0, v11, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "setAdminRemovable"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2589

    :cond_2471
    :goto_2471
    return-object v13

    :pswitch_2472
    if-eqz v4, :cond_248f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_247d

    goto/16 :goto_248f

    :cond_247d
    const/4 v10, 0x0

    :try_start_247e
    aget-object v0, v4, v10

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_2487
    .catch Landroid/os/RemoteException; {:try_start_247e .. :try_end_2487} :catch_2489

    goto/16 :goto_2589

    :catch_2489
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2589

    :cond_248f
    :goto_248f
    return-object v13

    :pswitch_2490
    if-eqz v4, :cond_24b3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_249a

    goto/16 :goto_24b3

    :cond_249a
    const/4 v10, 0x0

    :try_start_249b
    aget-object v0, v4, v10

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_24ab
    .catch Landroid/os/RemoteException; {:try_start_249b .. :try_end_24ab} :catch_24ad

    goto/16 :goto_2589

    :catch_24ad
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2589

    :cond_24b3
    :goto_24b3
    return-object v13

    :pswitch_24b4
    if-eqz v4, :cond_24e6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_24bf

    goto/16 :goto_24e6

    :cond_24bf
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAdminRemovable"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2589

    :cond_24e6
    :goto_24e6
    return-object v13

    :pswitch_24e7
    if-eqz v4, :cond_250c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-gt v0, v10, :cond_24f2

    goto/16 :goto_250c

    :cond_24f2
    const/4 v11, 0x0

    :try_start_24f3
    aget-object v0, v4, v11

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    aget-object v10, v4, v10

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/RemoteCallback;

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_2504
    .catch Landroid/os/RemoteException; {:try_start_24f3 .. :try_end_2504} :catch_2506

    goto/16 :goto_2589

    :catch_2506
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2589

    :cond_250c
    :goto_250c
    return-object v13

    :pswitch_250d
    if-eqz v4, :cond_2555

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2517

    goto/16 :goto_2555

    :cond_2517
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getActiveAdmins"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    if-eqz v0, :cond_2589

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2589

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_253b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2589

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_253b

    :cond_2555
    :goto_2555
    return-object v13

    :pswitch_2556
    if-eqz v4, :cond_2588

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2560

    goto/16 :goto_2588

    :cond_2560
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAdminRemovable"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2589

    :cond_2588
    :goto_2588
    return-object v13

    :cond_2589
    :goto_2589
    return-object v8

    :pswitch_258a
    goto/16 :goto_326e

    :pswitch_258c
    goto/16 :goto_326e

    :pswitch_258e
    goto/16 :goto_326e

    :pswitch_2590
    const-string/jumbo v0, "email_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    if-eqz v0, :cond_326e

    if-eqz v3, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v10, -0x5ed62634

    if-eq v2, v10, :cond_25db

    const v10, 0x655a3d46

    if-eq v2, v10, :cond_25cf

    const v10, 0x705941e0

    if-eq v2, v10, :cond_25c3

    const v10, 0x7378391a

    if-eq v2, v10, :cond_25b7

    goto/16 :goto_25e6

    :cond_25b7
    const-string/jumbo v2, "getSecurityIncomingServerPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25e6

    const/4 v11, 0x0

    goto/16 :goto_25e8

    :cond_25c3
    const-string/jumbo v2, "getSecurityOutgoingServerPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25e6

    const/4 v11, 0x1

    goto/16 :goto_25e8

    :cond_25cf
    const-string/jumbo v2, "setSecurityInComingServerPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25e6

    move v11, v12

    goto/16 :goto_25e8

    :cond_25db
    const-string/jumbo v2, "setSecurityOutGoingServerPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25e6

    goto/16 :goto_25e8

    :cond_25e6
    :goto_25e6
    move/from16 v11, v18

    :goto_25e8
    packed-switch v11, :pswitch_data_3636

    return-object v13

    :pswitch_25ec
    if-eqz v4, :cond_2619

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v10, 0x1

    if-ge v2, v10, :cond_25f7

    goto/16 :goto_2619

    :cond_25f7
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-virtual {v0, v2, v12}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v14, v10, [Ljava/lang/String;

    aput-object v3, v14, v11

    invoke-direct {v2, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v8, v10, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2646

    :cond_2619
    :goto_2619
    return-object v13

    :pswitch_261a
    if-eqz v4, :cond_2649

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v10, 0x1

    if-ge v2, v10, :cond_2625

    goto/16 :goto_2649

    :cond_2625
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-virtual {v0, v2, v12}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v14, v10, [Ljava/lang/String;

    aput-object v3, v14, v11

    invoke-direct {v2, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v8, v10, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_2646
    move-object v8, v2

    goto/16 :goto_26ae

    :cond_2649
    :goto_2649
    return-object v13

    :pswitch_264a
    if-eqz v4, :cond_267c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2654

    goto/16 :goto_267c

    :cond_2654
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSecurityOutgoingServerPassword"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26ae

    :cond_267c
    :goto_267c
    return-object v13

    :pswitch_267d
    if-eqz v4, :cond_26af

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2687

    goto/16 :goto_26af

    :cond_2687
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSecurityIncomingServerPassword"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_26ae
    return-object v8

    :cond_26af
    :goto_26af
    return-object v13

    :pswitch_26b0
    const-string/jumbo v0, "email_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailPolicy;

    if-eqz v0, :cond_326e

    if-eqz v3, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3642

    goto/16 :goto_271b

    :sswitch_26c6
    const-string/jumbo v2, "isAccountAdditionAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271b

    const/4 v10, 0x0

    goto/16 :goto_271d

    :sswitch_26d2
    const-string/jumbo v2, "getAllowEmailForwarding"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271b

    const/4 v10, 0x1

    goto/16 :goto_271d

    :sswitch_26de
    const-string/jumbo v2, "isEmailNotificationsEnabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271b

    move v10, v11

    goto/16 :goto_271d

    :sswitch_26ea
    const-string/jumbo v2, "isEmailSettingsChangesAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271b

    move v10, v12

    goto/16 :goto_271d

    :sswitch_26f6
    const-string/jumbo v2, "getEnterpriseEmailAccountObject"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271b

    move/from16 v10, v16

    goto/16 :goto_271d

    :sswitch_2703
    const-string/jumbo v2, "getEnterpriseExchangeAccountObject"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271b

    goto/16 :goto_271d

    :sswitch_270e
    const-string/jumbo v2, "getAllowHtmlEmail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271b

    move/from16 v10, v17

    goto/16 :goto_271d

    :cond_271b
    :goto_271b
    move/from16 v10, v18

    :goto_271d
    packed-switch v10, :pswitch_data_3660

    return-object v13

    :pswitch_2721
    if-eqz v4, :cond_275b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_272b

    goto/16 :goto_275b

    :cond_272b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v2, v10, v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getEnterpriseEmailAccountObject"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    if-nez v9, :cond_2750

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v9, v10

    :cond_2750
    const-string/jumbo v10, "email.account"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_288f

    :cond_275b
    :goto_275b
    return-object v13

    :pswitch_275c
    if-eqz v4, :cond_2796

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2766

    goto/16 :goto_2796

    :cond_2766
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v2, v10, v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getEnterpriseExchangeAccountObject"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    if-nez v9, :cond_278b

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v9, v10

    :cond_278b
    const-string/jumbo v10, "eas.account"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_288f

    :cond_2796
    :goto_2796
    return-object v13

    :pswitch_2797
    if-eqz v4, :cond_27c9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_27a1

    goto/16 :goto_27c9

    :cond_27a1
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAllowHtmlEmail"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_288f

    :cond_27c9
    :goto_27c9
    return-object v13

    :pswitch_27ca
    if-eqz v4, :cond_2800

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_27d4

    goto/16 :goto_2800

    :cond_27d4
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isEmailNotificationsEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_288f

    :cond_2800
    :goto_2800
    return-object v13

    :pswitch_2801
    if-eqz v4, :cond_2837

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_280b

    goto/16 :goto_2837

    :cond_280b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isEmailSettingsChangesAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_288f

    :cond_2837
    :goto_2837
    return-object v13

    :pswitch_2838
    if-eqz v4, :cond_286a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2842

    goto/16 :goto_286a

    :cond_2842
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAllowEmailForwarding"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_288f

    :cond_286a
    :goto_286a
    return-object v13

    :pswitch_286b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAccountAdditionAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_288f
    return-object v8

    :pswitch_2890
    const-string/jumbo v0, "dualsim_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    if-eqz v0, :cond_326e

    if-eqz v3, :cond_326e

    const-string/jumbo v2, "getpreferredsimslot"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_326e

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getpreferredsimslot"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v8

    :pswitch_28ca
    const-string/jumbo v0, "device_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v0, :cond_326e

    if-eqz v3, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v10, -0x7117b61

    if-eq v2, v10, :cond_28f4

    const v10, 0x4fb7d6e9    # 6.1686298E9f

    if-eq v2, v10, :cond_28e7

    goto/16 :goto_28ff

    :cond_28e7
    const-string/jumbo v2, "isAccountAdditionAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28ff

    const/16 v18, 0x1

    goto/16 :goto_28ff

    :cond_28f4
    const-string/jumbo v2, "isAccountRemovalAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28ff

    const/16 v18, 0x0

    :cond_28ff
    :goto_28ff
    packed-switch v18, :pswitch_data_3672

    return-object v13

    :pswitch_2903
    if-eqz v4, :cond_2939

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v11, :cond_290d

    goto/16 :goto_2939

    :cond_290d
    const/4 v2, 0x0

    aget-object v10, v4, v2

    const/4 v2, 0x1

    aget-object v11, v4, v2

    aget-object v2, v4, v12

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v10, v11, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAccountAdditionAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_296f

    :cond_2939
    :goto_2939
    return-object v13

    :pswitch_293a
    if-eqz v4, :cond_2971

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v11, :cond_2944

    goto/16 :goto_2971

    :cond_2944
    const/4 v2, 0x0

    aget-object v10, v4, v2

    const/4 v2, 0x1

    aget-object v11, v4, v2

    aget-object v2, v4, v12

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v10, v11, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAccountRemovalAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_296f
    nop

    return-object v8

    :cond_2971
    :goto_2971
    return-object v13

    :pswitch_2972
    const-string/jumbo v0, "knox_ccm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    if-eqz v0, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v10, -0x602f3b04

    if-eq v2, v10, :cond_29bd

    const v10, -0x148747ff

    if-eq v2, v10, :cond_29b0

    const v10, 0x37b7b049

    if-eq v2, v10, :cond_29a3

    const v10, 0x7a36baec

    if-eq v2, v10, :cond_2997

    goto/16 :goto_29c8

    :cond_2997
    const-string v2, "deleteCertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c8

    const/16 v18, 0x1

    goto/16 :goto_29c8

    :cond_29a3
    const-string/jumbo v2, "isCCMPolicyEnabledForPackage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c8

    move/from16 v18, v12

    goto/16 :goto_29c8

    :cond_29b0
    const-string/jumbo v2, "getCCMVersion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c8

    move/from16 v18, v11

    goto/16 :goto_29c8

    :cond_29bd
    const-string/jumbo v2, "installCertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c8

    const/16 v18, 0x0

    :cond_29c8
    :goto_29c8
    packed-switch v18, :pswitch_data_367a

    return-object v13

    :pswitch_29cc
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getCCMVersion"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2ac7

    :pswitch_29e8
    if-eqz v4, :cond_2a1a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_29f2

    goto/16 :goto_2a1a

    :cond_29f2
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2ac7

    :cond_2a1a
    :goto_2a1a
    return-object v13

    :pswitch_2a1b
    if-eqz v4, :cond_2a4c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2a25

    goto/16 :goto_2a4c

    :cond_2a25
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "deleteCertificate"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2ac7

    :cond_2a4c
    :goto_2a4c
    return-object v13

    :pswitch_2a4d
    if-eqz v4, :cond_2ac8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v12, :cond_2a57

    goto/16 :goto_2ac8

    :cond_2a57
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v13}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    const/4 v14, 0x0

    aget-object v15, v4, v14

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    const/4 v14, 0x1

    aget-object v15, v4, v14

    iput-object v15, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    aget-object v14, v4, v12

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    nop

    :goto_2a84
    move/from16 v11, v17

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    sub-int/2addr v14, v12

    if-ge v11, v14, :cond_2a95

    aget-object v14, v4, v11

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v11, 0x1

    goto :goto_2a84

    :cond_2a95
    iput-object v10, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    add-int/lit8 v12, v2, -0x2

    aget-object v12, v4, v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    add-int/lit8 v14, v2, -0x1

    aget-object v14, v4, v14

    invoke-virtual {v0, v11, v13, v12, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v14, "installCertificate"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_2ac7
    return-object v8

    :cond_2ac8
    :goto_2ac8
    return-object v13

    :pswitch_2ac9
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v2, :cond_326e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3686

    goto/16 :goto_2c36

    :sswitch_2add
    const-string/jumbo v0, "getAppInstallToSdCard"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    move/from16 v0, v17

    goto/16 :goto_2c38

    :sswitch_2aea
    const-string/jumbo v0, "getApplicationUninstallationEnabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/4 v0, 0x0

    goto/16 :goto_2c38

    :sswitch_2af6
    const-string/jumbo v0, "getApplicationStateDisabledList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x12

    goto/16 :goto_2c38

    :sswitch_2b03
    const-string/jumbo v0, "isPackageUpdateAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x9

    goto/16 :goto_2c38

    :sswitch_2b10
    const-string/jumbo v0, "isIntentDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    move v0, v12

    goto/16 :goto_2c38

    :sswitch_2b1c
    const-string/jumbo v0, "getPackagesFromDisableClipboardBlackList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x17

    goto/16 :goto_2c38

    :sswitch_2b29
    const-string/jumbo v0, "isUsbDevicePermittedForPackage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0xc

    goto/16 :goto_2c38

    :sswitch_2b36
    const-string/jumbo v0, "isChangeSmsDefaultAppAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0xe

    goto/16 :goto_2c38

    :sswitch_2b43
    const-string/jumbo v0, "getApplicationIconFromDb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0xd

    goto/16 :goto_2c38

    :sswitch_2b50
    const-string/jumbo v0, "isApplicationForceStopDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    move v0, v10

    goto/16 :goto_2c38

    :sswitch_2b5c
    const-string/jumbo v0, "isApplicationSetToDefault"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x10

    goto/16 :goto_2c38

    :sswitch_2b69
    const-string/jumbo v0, "getApplicationStateEnabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0xb

    goto/16 :goto_2c38

    :sswitch_2b76
    const-string/jumbo v0, "isApplicationClearCacheDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/4 v0, 0x7

    goto/16 :goto_2c38

    :sswitch_2b82
    const-string/jumbo v0, "getApplicationNameFromDb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x8

    goto/16 :goto_2c38

    :sswitch_2b8f
    const-string/jumbo v0, "getDefaultApplicationInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x11

    goto/16 :goto_2c38

    :sswitch_2b9c
    const-string/jumbo v0, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x16

    goto/16 :goto_2c38

    :sswitch_2ba9
    const-string/jumbo v0, "isChangeAssistDefaultAppAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0xf

    goto/16 :goto_2c38

    :sswitch_2bb6
    const-string/jumbo v0, "isApplicationClearDataDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    move/from16 v0, v16

    goto/16 :goto_2c38

    :sswitch_2bc3
    const-string/jumbo v0, "getApplicationUninstallationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x15

    goto/16 :goto_2c38

    :sswitch_2bd0
    const-string/jumbo v0, "getApplicationInstallUninstallList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x13

    goto/16 :goto_2c38

    :sswitch_2bdd
    const-string/jumbo v0, "getApplicationNotificationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    move v0, v11

    goto/16 :goto_2c38

    :sswitch_2be9
    const-string/jumbo v0, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x19

    goto/16 :goto_2c38

    :sswitch_2bf6
    const-string/jumbo v0, "isApplicationInstalled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/4 v0, 0x1

    goto/16 :goto_2c38

    :sswitch_2c02
    const-string/jumbo v0, "getApplicationComponentState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0xa

    goto/16 :goto_2c38

    :sswitch_2c0f
    const-string/jumbo v0, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x1a

    goto/16 :goto_2c38

    :sswitch_2c1c
    const-string/jumbo v0, "getPackagesFromDisableClipboardWhiteList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x18

    goto/16 :goto_2c38

    :sswitch_2c29
    const-string/jumbo v0, "getAppInstallationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c36

    const/16 v0, 0x14

    goto/16 :goto_2c38

    :cond_2c36
    :goto_2c36
    move/from16 v0, v18

    :goto_2c38
    packed-switch v0, :pswitch_data_36f4

    const-string v0, "SecContentProvider2"

    const-string/jumbo v10, "return null"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_2c44
    const/4 v0, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_2c7e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_2c7e

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v12, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v12, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v12

    move-object v10, v12

    check-cast v10, Ljava/util/HashMap;

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    aput-object v3, v13, v11

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    if-nez v9, :cond_2c74

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v9, v11

    :cond_2c74
    const-string v11, "clipboard_whitelist_perUid"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_326c

    :cond_2c7e
    return-object v13

    :pswitch_2c7f
    const/4 v0, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_2cb9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_2cb9

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v12, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v0, v13}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v12

    move-object v10, v12

    check-cast v10, Ljava/util/HashMap;

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v13, v13, [Ljava/lang/String;

    aput-object v3, v13, v11

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    if-nez v9, :cond_2caf

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v9, v11

    :cond_2caf
    const-string v11, "clipboard_blacklist_perUid"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_326c

    :cond_2cb9
    return-object v13

    :pswitch_2cba
    const/4 v0, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_2cd6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_2cd6

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_2cde

    :cond_2cd6
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    :goto_2cde
    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v14, v12

    invoke-direct {v11, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v10, :cond_2d0c

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2d0c

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2cf6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_326c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2cf6

    :cond_2d0c
    return-object v13

    :pswitch_2d0d
    const/4 v0, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_2d29

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_2d29

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_2d32

    :cond_2d29
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    :goto_2d32
    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v14, v12

    invoke-direct {v11, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v10, :cond_2d60

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2d60

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2d4a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_326c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d4a

    :cond_2d60
    return-object v13

    :pswitch_2d61
    invoke-virtual {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    if-eqz v0, :cond_326c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_326c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2d7d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_326c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d7d

    :pswitch_2d93
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    new-array v10, v11, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :pswitch_2db5
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    new-array v10, v11, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :pswitch_2dd7
    if-eqz v4, :cond_2e3d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_2de2

    goto/16 :goto_2e3d

    :cond_2de2
    const-string v0, "SecContentProvider2"

    const-string/jumbo v11, "getApplicationInstallUninstallList"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    aget-object v0, v4, v11

    invoke-virtual {v2, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v14, v10, [Ljava/lang/String;

    aput-object v3, v14, v11

    invoke-direct {v12, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    if-eqz v0, :cond_2e34

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2e34

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2e07
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_326c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "SecContentProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getApplicationInstallUninstallList value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e07

    :cond_2e34
    const-string v10, "SecContentProvider2"

    const-string/jumbo v11, "getApplicationInstallUninstallList null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_2e3d
    :goto_2e3d
    const-string v0, "SecContentProvider2"

    const-string/jumbo v10, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_2e46
    invoke-virtual {v2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e8f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2e8f

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2e62
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_326c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "SecContentProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getApplicationStateDisabledList value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e62

    :cond_2e8f
    const-string v10, "SecContentProvider2"

    const-string/jumbo v11, "getApplicationStateDisabledList null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_2e98
    if-eqz v4, :cond_2eed

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_2ea2

    goto/16 :goto_2eed

    :cond_2ea2
    move-object v10, v13

    const/4 v11, 0x0

    :try_start_2ea4
    aget-object v0, v4, v11

    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_2eaa
    .catch Ljava/net/URISyntaxException; {:try_start_2ea4 .. :try_end_2eaa} :catch_2ead

    move-object v10, v0

    goto/16 :goto_2ec4

    :catch_2ead
    move-exception v0

    const-string v11, "SecContentProvider2"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "URISyntaxException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2ec4
    const/4 v11, 0x1

    aget-object v0, v4, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v10, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getDefaultApplicationInternal"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v0, :cond_326c

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_2eed
    :goto_2eed
    return-object v13

    :pswitch_2eee
    if-eqz v4, :cond_2f22

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_2ef8

    goto/16 :goto_2f22

    :cond_2ef8
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationSetToDefault"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_2f22
    :goto_2f22
    return-object v13

    :pswitch_2f23
    if-eqz v4, :cond_2f55

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_2f2e

    goto/16 :goto_2f55

    :cond_2f2e
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isChangeAssistDefaultAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_2f55
    :goto_2f55
    return-object v13

    :pswitch_2f56
    if-eqz v4, :cond_2f8a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_2f60

    goto/16 :goto_2f8a

    :cond_2f60
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isChangeSmsDefaultAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_2f8a
    :goto_2f8a
    return-object v13

    :pswitch_2f8b
    if-eqz v4, :cond_2fb9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_2f96

    goto/16 :goto_2fb9

    :cond_2f96
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getApplicationIconFromDb"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [[B

    aput-object v0, v11, v10

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_2fb9
    :goto_2fb9
    return-object v13

    :pswitch_2fba
    if-eqz v4, :cond_2ff6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_2fc4

    goto/16 :goto_2ff6

    :cond_2fc4
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbDevice;

    aget-object v11, v4, v12

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isUsbDevicePermittedForPackage"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_2ff6
    :goto_2ff6
    return-object v13

    :pswitch_2ff7
    if-eqz v4, :cond_3029

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3001

    goto/16 :goto_3029

    :cond_3001
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getApplicationStateEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_3029
    :goto_3029
    return-object v13

    :pswitch_302a
    if-eqz v4, :cond_3062

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3034

    goto/16 :goto_3062

    :cond_3034
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getApplicationComponentState"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_3062
    :goto_3062
    return-object v13

    :pswitch_3063
    if-eqz v4, :cond_3096

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-gt v0, v10, :cond_306e

    goto/16 :goto_3096

    :cond_306e
    const/4 v11, 0x0

    aget-object v0, v4, v11

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isPackageUpdateAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_3096
    :goto_3096
    return-object v13

    :pswitch_3097
    if-eqz v4, :cond_30c6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-gt v0, v10, :cond_30a2

    goto/16 :goto_30c6

    :cond_30a2
    const/4 v11, 0x0

    aget-object v0, v4, v11

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getApplicationNameFromDb"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_30c6
    :goto_30c6
    return-object v13

    :pswitch_30c7
    if-eqz v4, :cond_3101

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_30d1

    goto/16 :goto_3101

    :cond_30d1
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v4, v12

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationClearCacheDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_3101
    :goto_3101
    return-object v13

    :pswitch_3102
    if-eqz v4, :cond_313c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_310c

    goto/16 :goto_313c

    :cond_310c
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v4, v12

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationClearDataDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_313c
    :goto_313c
    return-object v13

    :pswitch_313d
    if-eqz v4, :cond_317f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_3147

    goto/16 :goto_317f

    :cond_3147
    const/4 v13, 0x0

    aget-object v22, v4, v13

    const/4 v13, 0x1

    aget-object v0, v4, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    aget-object v24, v4, v12

    aget-object v25, v4, v11

    aget-object v26, v4, v17

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationForceStopDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_317f
    :goto_317f
    return-object v13

    :pswitch_3180
    const/4 v0, 0x1

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAppInstallToSdCard"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :pswitch_319d
    if-eqz v4, :cond_31d3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_31a7

    goto/16 :goto_31d3

    :cond_31a7
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getApplicationNotificationMode"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_31d3
    :goto_31d3
    return-object v13

    :pswitch_31d4
    if-eqz v4, :cond_3207

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_31de

    goto/16 :goto_3207

    :cond_31de
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIntentDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_3207
    :goto_3207
    return-object v13

    :pswitch_3208
    if-eqz v4, :cond_323a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3212

    goto/16 :goto_323a

    :cond_3212
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationInstalled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_326c

    :cond_323a
    :goto_323a
    return-object v13

    :pswitch_323b
    if-eqz v4, :cond_326d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3245

    goto/16 :goto_326d

    :cond_3245
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getApplicationUninstallationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_326c
    :goto_326c
    return-object v8

    :cond_326d
    :goto_326d
    return-object v13

    :cond_326e
    :goto_326e
    return-object v13

    nop

    :pswitch_data_3270
    .packed-switch 0x1
        :pswitch_2ac9
        :pswitch_2972
        :pswitch_28ca
        :pswitch_67
        :pswitch_2890
        :pswitch_26b0
        :pswitch_2590
        :pswitch_258e
        :pswitch_258c
        :pswitch_258a
        :pswitch_2321
        :pswitch_1f56
        :pswitch_1b40
        :pswitch_14a8
        :pswitch_aab
        :pswitch_a34
        :pswitch_90b
        :pswitch_4f7
        :pswitch_3d7
        :pswitch_c0
        :pswitch_69
    .end packed-switch

    :sswitch_data_329e
    .sparse-switch
        -0x741f137a -> :sswitch_16a
        -0x5d7bb47d -> :sswitch_15e
        -0x511c5d9f -> :sswitch_152
        -0x44588ee5 -> :sswitch_146
        -0x420e1f50 -> :sswitch_13a
        -0x23226268 -> :sswitch_12e
        -0x208922d -> :sswitch_122
        0x1b40829f -> :sswitch_116
        0x2e222643 -> :sswitch_10a
        0x5a7559bf -> :sswitch_fd
        0x60eb8b37 -> :sswitch_f0
        0x6406da08 -> :sswitch_e3
        0x68ddea58 -> :sswitch_d6
    .end sparse-switch

    :pswitch_data_32d4
    .packed-switch 0x0
        :pswitch_3b2
        :pswitch_37d
        :pswitch_359
        :pswitch_334
        :pswitch_30f
        :pswitch_2e2
        :pswitch_2bd
        :pswitch_298
        :pswitch_273
        :pswitch_21c
        :pswitch_1c2
        :pswitch_19f
        :pswitch_17c
    .end packed-switch

    :pswitch_data_32f2
    .packed-switch 0x0
        :pswitch_4c8
        :pswitch_494
        :pswitch_460
        :pswitch_42b
    .end packed-switch

    :sswitch_data_32fe
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_5e2
        -0x75b6adce -> :sswitch_5d6
        -0x516c3a61 -> :sswitch_5ca
        -0x4b848555 -> :sswitch_5be
        -0x45f6c0db -> :sswitch_5b2
        -0x3f23242a -> :sswitch_5a6
        -0x36ade6b7 -> :sswitch_59a
        -0x308af1de -> :sswitch_58f
        -0xb24e11b -> :sswitch_583
        0x1134efad -> :sswitch_577
        0x1410b963 -> :sswitch_56b
        0x14e927da -> :sswitch_55f
        0x174ab65e -> :sswitch_552
        0x42bd705d -> :sswitch_547
        0x617af081 -> :sswitch_53a
        0x6b27fd59 -> :sswitch_52f
        0x6dfeff94 -> :sswitch_523
        0x6e342165 -> :sswitch_516
        0x7be8d885 -> :sswitch_50b
    .end sparse-switch

    :pswitch_data_334c
    .packed-switch 0x0
        :pswitch_8cf
        :pswitch_8ab
        :pswitch_87d
        :pswitch_858
        :pswitch_82c
        :pswitch_807
        :pswitch_7e2
        :pswitch_7cf
        :pswitch_7aa
        :pswitch_785
        :pswitch_760
        :pswitch_73b
        :pswitch_716
        :pswitch_6f1
        :pswitch_6c5
        :pswitch_699
        :pswitch_66c
        :pswitch_64a
        :pswitch_5fb
    .end packed-switch

    :pswitch_data_3376
    .packed-switch 0x0
        :pswitch_9fa
        :pswitch_9c1
        :pswitch_987
        :pswitch_961
    .end packed-switch

    :pswitch_data_3382
    .packed-switch 0x0
        :pswitch_a8a
        :pswitch_a6b
    .end packed-switch

    :sswitch_data_338a
    .sparse-switch
        -0x7d00b11f -> :sswitch_cc2
        -0x7cda2990 -> :sswitch_cb6
        -0x7bf265f6 -> :sswitch_caa
        -0x7bc370bc -> :sswitch_c9e
        -0x757aa1fb -> :sswitch_c93
        -0x6ff99d8b -> :sswitch_c87
        -0x6f61ea52 -> :sswitch_c7d
        -0x6f1f927d -> :sswitch_c71
        -0x6cd5112c -> :sswitch_c66
        -0x6c8256b9 -> :sswitch_c59
        -0x68231777 -> :sswitch_c4c
        -0x5f479d3d -> :sswitch_c3f
        -0x5d96bdfd -> :sswitch_c32
        -0x49039c7d -> :sswitch_c25
        -0x3eeccaaa -> :sswitch_c18
        -0x3b6d6c7b -> :sswitch_c0c
        -0x3169f913 -> :sswitch_bff
        -0x24629eae -> :sswitch_bf2
        -0x105b68f3 -> :sswitch_be5
        -0xb98097b -> :sswitch_bd8
        -0x63922de -> :sswitch_bcb
        -0x4a6fada -> :sswitch_bbe
        -0x2cd0269 -> :sswitch_bb1
        -0x2246832 -> :sswitch_ba4
        -0x117c459 -> :sswitch_b97
        0x4fd98e1 -> :sswitch_b8a
        0x85fa496 -> :sswitch_b7d
        0x1086aa03 -> :sswitch_b70
        0x12bb4d48 -> :sswitch_b64
        0x18e41b33 -> :sswitch_b57
        0x1d261c9d -> :sswitch_b4a
        0x240ce64e -> :sswitch_b3d
        0x32c1d30f -> :sswitch_b30
        0x438d32f5 -> :sswitch_b23
        0x4875c45d -> :sswitch_b16
        0x4a948f99 -> :sswitch_b09
        0x4abdeb96 -> :sswitch_afc
        0x64defd38 -> :sswitch_aef
        0x67050a1d -> :sswitch_ae3
        0x6c8af02b -> :sswitch_ad6
        0x6db77171 -> :sswitch_ac9
        0x6ec40bb4 -> :sswitch_abc
    .end sparse-switch

    :pswitch_data_3434
    .packed-switch 0x0
        :pswitch_1479
        :pswitch_144c
        :pswitch_1420
        :pswitch_13da
        :pswitch_13ad
        :pswitch_1380
        :pswitch_1353
        :pswitch_132b
        :pswitch_12fe
        :pswitch_12d1
        :pswitch_12a4
        :pswitch_1277
        :pswitch_124a
        :pswitch_121d
        :pswitch_11ef
        :pswitch_11c1
        :pswitch_1194
        :pswitch_1167
        :pswitch_113a
        :pswitch_110d
        :pswitch_10e0
        :pswitch_10b3
        :pswitch_1086
        :pswitch_1059
        :pswitch_1017
        :pswitch_fea
        :pswitch_fbd
        :pswitch_f91
        :pswitch_f65
        :pswitch_f39
        :pswitch_ef8
        :pswitch_ecc
        :pswitch_ea0
        :pswitch_e74
        :pswitch_e33
        :pswitch_dfa
        :pswitch_dc1
        :pswitch_d80
        :pswitch_d59
        :pswitch_d2c
        :pswitch_d00
        :pswitch_cd4
    .end packed-switch

    :sswitch_data_348c
    .sparse-switch
        -0x75228db3 -> :sswitch_1603
        -0x5e8b707a -> :sswitch_15f7
        -0x535b24ed -> :sswitch_15eb
        -0x5344faa1 -> :sswitch_15df
        -0x49b19ab4 -> :sswitch_15d2
        -0x477f69dc -> :sswitch_15c5
        -0x47062780 -> :sswitch_15ba
        -0x2d0232dc -> :sswitch_15ad
        -0x1b1e2f47 -> :sswitch_15a1
        -0x6441366 -> :sswitch_1594
        -0x2067e91 -> :sswitch_1587
        0x85fa496 -> :sswitch_157a
        0x10dc886c -> :sswitch_156d
        0x27deb5dc -> :sswitch_1560
        0x376703d8 -> :sswitch_1553
        0x3e24f8e6 -> :sswitch_1546
        0x428f670d -> :sswitch_1539
        0x432078d3 -> :sswitch_152d
        0x433f1786 -> :sswitch_1520
        0x4f9505ac -> :sswitch_1513
        0x5afa1a68 -> :sswitch_1506
        0x5b05ced2 -> :sswitch_14f9
        0x6238abf9 -> :sswitch_14ec
        0x694839c4 -> :sswitch_14df
        0x6ad3e979 -> :sswitch_14d2
        0x6c630712 -> :sswitch_14c6
        0x75760f09 -> :sswitch_14b9
    .end sparse-switch

    :pswitch_data_34fa
    .packed-switch 0x0
        :pswitch_1afb
        :pswitch_1ace
        :pswitch_1aa2
        :pswitch_1a67
        :pswitch_1a2c
        :pswitch_1a04
        :pswitch_19d8
        :pswitch_19ab
        :pswitch_197e
        :pswitch_1951
        :pswitch_1924
        :pswitch_18e9
        :pswitch_18a2
        :pswitch_1871
        :pswitch_1844
        :pswitch_1817
        :pswitch_17ea
        :pswitch_17bd
        :pswitch_1790
        :pswitch_1763
        :pswitch_1736
        :pswitch_170e
        :pswitch_16e1
        :pswitch_16b4
        :pswitch_1685
        :pswitch_1658
        :pswitch_1616
    .end packed-switch

    :sswitch_data_3534
    .sparse-switch
        -0x678cfb16 -> :sswitch_1c03
        -0x5d1cb00b -> :sswitch_1bf6
        -0x58dab65f -> :sswitch_1be9
        -0x55d0d0ee -> :sswitch_1bdc
        -0x495e7741 -> :sswitch_1bd0
        -0x1abb5fa -> :sswitch_1bc4
        0xf077a09 -> :sswitch_1bb9
        0x1fa36ac0 -> :sswitch_1bac
        0x2f421cc3 -> :sswitch_1ba0
        0x32574534 -> :sswitch_1b93
        0x34565e5f -> :sswitch_1b87
        0x38ab60cf -> :sswitch_1b7a
        0x3ab3e61a -> :sswitch_1b6e
        0x4ed22f86 -> :sswitch_1b61
        0x6c0df1e8 -> :sswitch_1b54
    .end sparse-switch

    :pswitch_data_3572
    .packed-switch 0x0
        :pswitch_1f31
        :pswitch_1efa
        :pswitch_1eb0
        :pswitch_1e42
        :pswitch_1dd4
        :pswitch_1db8
        :pswitch_1d81
        :pswitch_1cf8
        :pswitch_1cd7
        :pswitch_1cb7
        :pswitch_1c97
        :pswitch_1c77
        :pswitch_1c57
        :pswitch_1c37
        :pswitch_1c17
    .end packed-switch

    :sswitch_data_3594
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_200e
        -0x7a29af54 -> :sswitch_2001
        -0x7672ed17 -> :sswitch_1ff4
        -0x6a25634f -> :sswitch_1fe8
        -0x437f6e25 -> :sswitch_1fdb
        -0x1e01c219 -> :sswitch_1fce
        -0x14b468b1 -> :sswitch_1fc2
        0xb8321a0 -> :sswitch_1fb5
        0x26b3fb45 -> :sswitch_1fa9
        0x2a7ba768 -> :sswitch_1f9d
        0x37929121 -> :sswitch_1f90
        0x6e37395a -> :sswitch_1f83
        0x77ba6b2b -> :sswitch_1f78
        0x7ec2cd45 -> :sswitch_1f6c
    .end sparse-switch

    :pswitch_data_35ce
    .packed-switch 0x0
        :pswitch_22ea
        :pswitch_22b3
        :pswitch_227c
        :pswitch_2245
        :pswitch_220e
        :pswitch_21d7
        :pswitch_21a0
        :pswitch_2169
        :pswitch_2132
        :pswitch_20fb
        :pswitch_20c8
        :pswitch_2095
        :pswitch_205e
        :pswitch_2029
    .end packed-switch

    :sswitch_data_35ee
    .sparse-switch
        -0x76e9095f -> :sswitch_23b4
        -0x755ab0b2 -> :sswitch_23a7
        -0x69b477e0 -> :sswitch_239a
        -0x5fd37362 -> :sswitch_238d
        -0x3d5118be -> :sswitch_2380
        -0x4e0d4c0 -> :sswitch_2373
        0x1d6710b8 -> :sswitch_2366
        0x2fe3c227 -> :sswitch_2359
        0x3854fcc5 -> :sswitch_234c
        0x47a72ec2 -> :sswitch_233f
        0x7ac2a216 -> :sswitch_2332
    .end sparse-switch

    :pswitch_data_361c
    .packed-switch 0x0
        :pswitch_2556
        :pswitch_250d
        :pswitch_24e7
        :pswitch_24b4
        :pswitch_2490
        :pswitch_2472
        :pswitch_2439
        :pswitch_2437
        :pswitch_2416
        :pswitch_23ea
        :pswitch_23c8
    .end packed-switch

    :pswitch_data_3636
    .packed-switch 0x0
        :pswitch_267d
        :pswitch_264a
        :pswitch_261a
        :pswitch_25ec
    .end packed-switch

    :sswitch_data_3642
    .sparse-switch
        -0x793fada2 -> :sswitch_270e
        -0x5c3258ae -> :sswitch_2703
        -0x3c3a3ab9 -> :sswitch_26f6
        -0x394ec066 -> :sswitch_26ea
        0x1733e8eb -> :sswitch_26de
        0x4e985da6 -> :sswitch_26d2
        0x4fb7d6e9 -> :sswitch_26c6
    .end sparse-switch

    :pswitch_data_3660
    .packed-switch 0x0
        :pswitch_286b
        :pswitch_2838
        :pswitch_2801
        :pswitch_27ca
        :pswitch_2797
        :pswitch_275c
        :pswitch_2721
    .end packed-switch

    :pswitch_data_3672
    .packed-switch 0x0
        :pswitch_293a
        :pswitch_2903
    .end packed-switch

    :pswitch_data_367a
    .packed-switch 0x0
        :pswitch_2a4d
        :pswitch_2a1b
        :pswitch_29e8
        :pswitch_29cc
    .end packed-switch

    :sswitch_data_3686
    .sparse-switch
        -0x777467f8 -> :sswitch_2c29
        -0x75f653b4 -> :sswitch_2c1c
        -0x526f4ac4 -> :sswitch_2c0f
        -0x4de6cfb2 -> :sswitch_2c02
        -0x4378abac -> :sswitch_2bf6
        -0x42f2906e -> :sswitch_2be9
        -0x308e1a98 -> :sswitch_2bdd
        -0x29404601 -> :sswitch_2bd0
        -0x2360eeb0 -> :sswitch_2bc3
        -0xf8e19f3 -> :sswitch_2bb6
        0x14014325 -> :sswitch_2ba9
        0x16233ecf -> :sswitch_2b9c
        0x1a458c22 -> :sswitch_2b8f
        0x1e373fed -> :sswitch_2b82
        0x21074337 -> :sswitch_2b76
        0x22e592aa -> :sswitch_2b69
        0x2383ddea -> :sswitch_2b5c
        0x2952fe03 -> :sswitch_2b50
        0x2d2b575b -> :sswitch_2b43
        0x2dd7b5a9 -> :sswitch_2b36
        0x38dd3e65 -> :sswitch_2b29
        0x3c119522 -> :sswitch_2b1c
        0x3c3b0102 -> :sswitch_2b10
        0x3d4c4243 -> :sswitch_2b03
        0x3d73f371 -> :sswitch_2af6
        0x49cef874 -> :sswitch_2aea
        0x767a17ac -> :sswitch_2add
    .end sparse-switch

    :pswitch_data_36f4
    .packed-switch 0x0
        :pswitch_323b
        :pswitch_3208
        :pswitch_31d4
        :pswitch_319d
        :pswitch_3180
        :pswitch_313d
        :pswitch_3102
        :pswitch_30c7
        :pswitch_3097
        :pswitch_3063
        :pswitch_302a
        :pswitch_2ff7
        :pswitch_2fba
        :pswitch_2f8b
        :pswitch_2f56
        :pswitch_2f23
        :pswitch_2eee
        :pswitch_2e98
        :pswitch_2e46
        :pswitch_2dd7
        :pswitch_2db5
        :pswitch_2d93
        :pswitch_2d61
        :pswitch_2d0d
        :pswitch_2cba
        :pswitch_2c7f
        :pswitch_2c44
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
