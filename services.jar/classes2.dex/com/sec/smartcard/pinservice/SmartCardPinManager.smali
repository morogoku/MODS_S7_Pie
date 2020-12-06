.class public Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
    }
.end annotation


# static fields
.field private static final BIND_PIN_SERVICE:Ljava/lang/String; = "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final LOCKSCREEN_TYPE_OTHER:Ljava/lang/String; = "Other"

.field public static final LOCKSCREEN_TYPE_SMARTCARD:Ljava/lang/String; = "Smartcard"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.smartcard.manager/smartcards"

.field private static final SAMSUNG_SC_PKG_PREFIX:Ljava/lang/String; = "com.sec.enterprise.mdm.sc."

.field private static final SMARTCARD_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmartCardPinManager"

.field private static final URL:Ljava/lang/String; = "content://com.sec.smartcard.manager/smartcards"

.field public static final VERIFY_PIN_CARDASSOCIATEERROR:I = 0x8

.field public static final VERIFY_PIN_CARDDISCONNECT:I = 0x6

.field public static final VERIFY_PIN_CARDERROR:I = 0x5

.field public static final VERIFY_PIN_CARDEXPIRED:I = 0x3

.field public static final VERIFY_PIN_CARDLOCKED:I = 0x2

.field public static final VERIFY_PIN_CONNECTIONERROR:I = 0x4

.field public static final VERIFY_PIN_FAIL:I = 0x1

.field public static final VERIFY_PIN_SUCCESS:I = 0x0

.field public static final VERIFY_PIN_USERCANCEL:I = 0x7

.field private static queue:Ljava/util/concurrent/BlockingQueue;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCallbackCalled:Z

.field private mPin:[C

.field private mServiceConnectionProgress:Z

.field private mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

.field private pinServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sec.smartcard.manager/smartcards"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "CardCUID"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->SMARTCARD_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v1, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    const-string v1, "SmartCardPinManager"

    const-string v2, "SmartCardPinManager"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService(Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v1, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    const-string v1, "SmartCardPinManager"

    const-string v2, "SmartCardPinManager Sync"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez p3, :cond_23

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService(Landroid/os/UserHandle;)V

    goto :goto_2b

    :cond_23
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    :goto_2b
    return-void
.end method

.method static synthetic access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .registers 2

    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    return p1
.end method

.method static synthetic access$200()Ljava/util/concurrent/BlockingQueue;
    .registers 1

    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C
    .registers 2

    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    return p1
.end method

.method private bindSmartCardPinService(Landroid/os/UserHandle;)V
    .registers 7

    const-string v0, "SmartCardPinManager"

    const-string v1, "bindSmartCardPinService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_67

    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "mSmartCardPin is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    if-eqz v0, :cond_1f

    const-string v0, "SmartCardPinManager"

    const-string v1, "binding to service is progress. new request to bind is ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.smartcard.manager"

    const-string v3, "com.sec.smartcard.pinservice.SmartCardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "SmartCardPinManager"

    const-string v2, "binding to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p1, :cond_5e

    const-string v2, "SmartCardPinManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding to smartcard pin service for a user handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_65

    :cond_5e
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_65
    iput-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    :cond_67
    return-void
.end method

.method public static isCardRegistered(Landroid/content/Context;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v2, "SmartCardPinManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SmartCardPinManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content resolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->SMARTCARD_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "SmartCardPinManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SmartCardPinManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor.count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_77

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_77

    const/4 v0, 0x1

    :cond_77
    return v0
.end method

.method public static isSmartCardAuthenticationInstalled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string v1, "SmartCardPinManager"

    const-string v2, "context is null returning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.smartcard.permission.SMARTCARD_ADAPTER"

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "SmartCardPinManager"

    const-string v5, "isSmartCardAuthenticationInstalled: True"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    nop

    :cond_3b
    return v0
.end method


# virtual methods
.method public bindSmartCardPinService_Sync(Landroid/os/UserHandle;)V
    .registers 7

    const-string v0, "SmartCardPinManager"

    const-string v1, "bindSmartCardPinService_Sync()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_78

    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "mSmartCardPin is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    if-eqz v0, :cond_1f

    const-string v0, "SmartCardPinManager"

    const-string v1, "binding to service is progress. new request to bind is ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    const-string v0, "SmartCardPinManager"

    const-string v1, "binding to smartcard pin service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.smartcard.manager"

    const-string v3, "com.sec.smartcard.pinservice.SmartCardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz p1, :cond_5e

    const-string v2, "SmartCardPinManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding to smartcard pin service for a user handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_65

    :cond_5e
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_65
    iput-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    :try_start_67
    const-string v1, "SmartCardPinManager"

    const-string v2, "calling queue.take"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_78
    :goto_78
    return-void
.end method

.method public getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_19

    :try_start_4
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0, p1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPin(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    iget-object v1, p1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;->mICallback:Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    invoke-interface {v0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->getPin(Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public declared-synchronized getPinSync()[C
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->getPin(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V

    iget-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_1b
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v1

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCardRegistered()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_12

    :try_start_5
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isCardRegistered()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move v0, v1

    :goto_c
    goto :goto_1a

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    :cond_12
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return v0
.end method

.method public isDeviceConnectedWithCard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSmartCardAuthenticationAvailable()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_12

    :try_start_5
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isSmartCardAuthenticationAvailable()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move v0, v1

    :goto_c
    goto :goto_1a

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    :cond_12
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return v0
.end method

.method public registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "registerCard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_21

    :try_start_c
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showCardNotRegisteredDialog()V
    .registers 3

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->showCardNotRegisteredDialog()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_e
    goto :goto_17

    :cond_f
    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method public unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_19

    :try_start_4
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unbindSmartCardPinService()V
    .registers 3

    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "unbindSmartCardPinService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "unbinding to smartcard pin service "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_23

    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "mSmartCardPin is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_23
    return-void
.end method

.method public verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "verifyCard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_21

    :try_start_c
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
