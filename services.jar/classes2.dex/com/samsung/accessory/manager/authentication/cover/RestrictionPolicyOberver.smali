.class public Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;
.super Ljava/lang/Object;
.source "RestrictionPolicyOberver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;,
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    }
.end annotation


# static fields
.field static final BLOCKED_BOTH:I = 0x3

.field static final BLOCKED_FELICA:I = 0x2

.field static final BLOCKED_MDM:I = 0x1

.field static final NON_BLOCKED:I

.field private static final TAG:Ljava/lang/String;

.field private static mCoverVersion:I

.field private static mCr:Landroid/content/ContentResolver;

.field static mIsFelicaAllowed:Z

.field static mIsMdmAllowed:Z

.field private static mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

.field static mPendingFelicaNotification:Z


# instance fields
.field mBootCompleted:Z

.field mContext:Landroid/content/Context;

.field mFelicaReceiver:Landroid/content/BroadcastReceiver;

.field mFelicaReceiverInitialized:Z

.field mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mPendingFelicaNotification:Z

    const/4 v0, -0x1

    sput v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCoverVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->registerObservers()V

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getMdmPolicy()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getMdmPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()V

    return-void
.end method

.method private buildMdmObserver()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;
    .registers 2

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;-><init>()V

    return-object v0
.end method

.method public static getBlockedType()I
    .registers 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x3

    return v0

    :cond_a
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-nez v0, :cond_10

    const/4 v0, 0x2

    return v0

    :cond_10
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized getMdmPolicy()Z
    .registers 9

    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const-string v6, "isNFCEnabled"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_49

    :try_start_1a
    const-string v3, "isNFCEnabled"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v1, 0x1

    goto :goto_38

    :cond_2f
    const-string v5, "false"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_35
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1a .. :try_end_35} :catch_3e
    .catchall {:try_start_1a .. :try_end_35} :catchall_3c

    if-eqz v5, :cond_38

    const/4 v1, 0x0

    :cond_38
    :goto_38
    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_49

    goto :goto_47

    :catchall_3c
    move-exception v3

    goto :goto_43

    :catch_3e
    move-exception v3

    :try_start_3f
    invoke-virtual {v3}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_3c

    goto :goto_38

    :goto_43
    :try_start_43
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_49

    :cond_47
    :goto_47
    monitor-exit v0

    return v1

    :catchall_49
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNfcAdapter()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    :cond_c
    return-void
.end method

.method public static getNfcFeature()I
    .registers 1

    sget v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCoverVersion:I

    return v0
.end method

.method public static isAuthenticatonAllowed()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private registerObservers()V
    .registers 5

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2/isNFCEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->buildMdmObserver()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public getFelicaPolicy()V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    goto :goto_1b

    :cond_14
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    const-string v2, "Do not call when nfc service is not ready"

    invoke-static {v0, v2}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    if-nez v0, :cond_34

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.nfc.AUTH_READY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    :cond_34
    return-void
.end method

.method public onBootCompleted()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    return-void
.end method

.method public setNfcFeature()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getCoverVersion()I

    move-result v0

    sput v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCoverVersion:I

    :cond_f
    return-void
.end method

.method public setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V
    .registers 2

    sput-object p1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    return-void
.end method

.method public showFelicaNotification()V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mPendingFelicaNotification:Z

    goto :goto_20

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.applinker.action.FELICA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.applinker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_20
    return-void
.end method
