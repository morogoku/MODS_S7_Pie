.class public Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
.super Ljava/lang/Object;
.source "TencentSecurityWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;,
        Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z

.field private static connApBssid:Ljava/lang/String;

.field private static connApSecurity:I

.field private static connApSsid:Ljava/lang/String;

.field private static mInManagerNetwork:Z

.field private static mSecurityAps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final projection:[Ljava/lang/String;

.field private static twsEnable:Z


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private friendContext:Landroid/content/Context;

.field private mEvalutionCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

.field private observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

.field private resolver:Landroid/content/ContentResolver;

.field private showTwsDialog:Z

.field private wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    const-string v0, "content://com.samsung.tencentwifi.security.provider/item/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_dialog"

    const-string v3, "_enabletws"

    const-string v4, "_ssid"

    const-string v5, "_bssid"

    const-string v6, "_security"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->projection:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    const-string v0, "-"

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSsid:Ljava/lang/String;

    const-string v0, "-"

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApBssid:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    sput-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mInManagerNetwork:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    new-instance v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    iput-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvalutionCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    new-instance v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->setAccessPointSecurity(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvalutionCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->updateWifiSecurity()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApBssid:Ljava/lang/String;

    return-object v0
.end method

.method private isWifiOnly(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private isWifiSecurityPackageExist(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.tencentwifisecurity"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const-string v0, "TencentSecurityWifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is WifiSecurity Package Exist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private registerObserver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    :try_start_0
    const-string v0, "com.samsung.android.tencentwifisecurity"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :cond_1
    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void
.end method

.method private setAccessPointSecurity(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    nop

    :goto_0
    move v0, v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "TencentSecurityWifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "TencentSecurityWifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set AP Security, mSecurityAps size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    const-string v0, "TencentSecurityWifiManager"

    const-string v1, "set AP Security, size is different"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private unregisterObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private updateWifiSecurity()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->projection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id asc"

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    :cond_2
    const-string v2, "enable"

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    const-string v2, "enable"

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSsid:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApBssid:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "safe"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    sput v3, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    goto :goto_0

    :cond_3
    const-string v4, "risk"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sput v3, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    sput v3, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->connApSecurity:I

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method


# virtual methods
.method public isRiskAp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "TencentSecurityWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is RiskAp, ssid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", AP Security: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->apSecurity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->apSecurity:Ljava/lang/String;

    const-string v3, "Risk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v1
.end method

.method public startWifiSecurityDetection(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TencentSecurityWifiManager"

    const-string v1, "start detection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityPackageExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.VIEW_DETECTION_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startWifiSecurityEvalution(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityPackageExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->registerObserver(Landroid/content/Context;Landroid/os/Handler;)V

    sget-object v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->updateWifiSecurity()V

    const-string v1, "TencentSecurityWifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Evalution, twsEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " showTwsDialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->twsEnable:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.tencentwifisecurity"

    const-string v3, "com.samsung.android.tencentwifisecurity.WifiEvalutionService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public stopWifiSecurityEvalution(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityPackageExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    invoke-interface {v1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->stopSecurityEvalution()V

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    iget-object v2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvalutionCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->unregisterEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->wifiEvalutionService:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->unregisterObserver()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
