.class public Lcom/android/server/semclipboard/SemClipboardService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;,
        Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;,
        Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;,
        Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;,
        Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;,
        Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    }
.end annotation


# static fields
.field private static final EDGE_COMPONENT_NAME:Ljava/lang/String; = "com.samsung.android.app.clipboardedge"

.field private static final EDGE_COMPONENT_PROVIDER:Ljava/lang/String; = "com.samsung.android.app.clipboardedge.edgepanel.ClipboardEdgePanelProvider"

.field private static final TAG:Ljava/lang/String; = "SemClipboardService"

.field private static final TMP_FILE_OWNER_CANONICAL_PATH:Ljava/lang/String; = "/data/data/com.samsung.clipboardsaveservice/files/"

.field private static final TMP_FILE_SAVE_PATH:Ljava/lang/String; = "com.samsung.clipboardsaveservice/files/"

.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private KNOX_PASTE_FLAG:Z

.field private final KNOX_VERSION:Ljava/lang/String;

.field private final MSG_DELETE_TEMP_FILE:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_START_SERVICE:I

.field private final MSG_UPDATE_DIALOG:I

.field private clipPickerDataList:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mCallingId:I

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

.field private mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private final mClipboardEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z

.field private mIsLogging:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mUm:Landroid/os/IUserManager;

.field private final mUserChangedListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/clipboard/IOnUserChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingUiInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;-><init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->clipPickerDataList:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->KNOX_VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->KNOX_PASTE_FLAG:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-direct {v2, p0, v1}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V

    iput-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipBoardDataUiEventImp:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsLogging:Z

    iput v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_SHOW_DIALOG:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_START_SERVICE:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_UPDATE_DIALOG:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_DISMISS_DIALOG:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->MSG_DELETE_TEMP_FILE:I

    new-instance v3, Lcom/android/server/semclipboard/SemClipboardService$4;

    invoke-direct {v3, p0}, Lcom/android/server/semclipboard/SemClipboardService$4;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    iput-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsDialogShowing:Z

    new-instance v3, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v4, 0x14

    invoke-direct {v3, v4, p1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {v0, v4, p1, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "enterprise.container.remove.progress"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "enterprise.container.uninstalled"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.intent.action.SECONTAINER_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/semclipboard/SemClipboardService$1;

    invoke-direct {v5, p0}, Lcom/android/server/semclipboard/SemClipboardService$1;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->RCP_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_BLACKLIST_APP_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_WHITELIST_APP_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v2

    new-instance v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;

    invoke-direct {v4, p0, v1}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;-><init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V

    invoke-virtual {v2, v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->registerClipboardPolicyChangeListener(Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;)V

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->registerKnoxModeChangeObserver()V

    return-void
.end method

.method private ListChange(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_36

    :try_start_e
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-object v0, v3

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_1a} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_32

    :catch_1b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_33

    :catch_20
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32

    :catch_25
    move-exception v3

    invoke-virtual {v3}, Landroid/os/DeadObjectException;->printStackTrace()V

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    :goto_32
    nop

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_36
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/semclipboard/SemClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/semclipboard/SemClipboardService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->doSyncForFota(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/semclipboard/SemClipboardService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKioskEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/semclipboard/SemClipboardService;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/semclipboard/SemClipboardService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/semclipboard/SemClipboardService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->sendLoggingForCB(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/semclipboard/SemClipboardService;Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->updateDataListChange(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/ClipboardUIManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;
    .registers 2

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/semclipboard/SemClipboardService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/semclipboard/SemClipboardService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyUserChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/semclipboard/SemClipboardService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->KNOX_PASTE_FLAG:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/semclipboard/SemClipboardService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->KNOX_PASTE_FLAG:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->deleteImageData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/semclipboard/SemClipboardService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/semclipboard/SemClipboardService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/semclipboard/SemClipboardService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v0

    return v0
.end method

.method private addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
    .registers 9

    const-string v0, "SemClipboardService"

    const-string v1, "addData.."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    :cond_14
    invoke-direct {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->checkEquals(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The data are the same.:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_47

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3b

    goto :goto_5e

    :cond_3b
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_47
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v4

    :cond_5a
    invoke-direct {p0, v3, v4}, Lcom/android/server/semclipboard/SemClipboardService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_5e
    return v1

    :cond_5f
    invoke-virtual {p2, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    if-eqz v1, :cond_74

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/semclipboard/SemClipboardService$3;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService$3;-><init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/samsung/android/content/clipboard/data/SemClipData;ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x0

    return v2

    :cond_74
    const-string v2, "SemClipboardService"

    const-string v3, "data is null"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private canReadAcrossProfiles()Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_36

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v2, v1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "no_cross_profile_copy_paste"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canReadAcrossProfiles : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_36
    :goto_36
    return v0
.end method

.method private checkCallerIsSystemOrSignature()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isCallerSystemOrSignature()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-string v0, "SemClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private checkEquals(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    if-eq v2, v3, :cond_16

    goto :goto_31

    :cond_16
    invoke-virtual {v1, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->reAddForKnox(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    const-string v2, "SemClipboardService"

    const-string v3, "completed reAddForKnox method"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return v0

    :cond_31
    :goto_31
    return v0
.end method

.method private clearDataList()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    :cond_d
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v1

    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearDataList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_2e
    const-string v1, "SemClipboardService"

    const-string v2, "clearDataList"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method private copyFileToOwner(ILjava/lang/String;)Ljava/io/File;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFileToUserZero : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "rcp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    :cond_30
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v2, 0x0

    const-string v3, "/data/clipboard/deletedClips.xml"

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/clipboard/deletedClips.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3f} :catch_41

    move-object v0, v1

    goto :goto_58

    :catch_41
    move-exception v1

    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inside file copy exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return-object v0
.end method

.method private deleteImageData(Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_3
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/semclipboard/SemClipboardProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data=? "

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_52

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_52

    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Lcom/android/server/semclipboard/SemClipboardProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_52} :catch_57
    .catchall {:try_start_3 .. :try_end_52} :catchall_55

    :cond_52
    if-eqz v2, :cond_61

    goto :goto_5d

    :catchall_55
    move-exception v1

    goto :goto_62

    :catch_57
    move-exception v1

    :try_start_58
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_55

    if-eqz v2, :cond_61

    :goto_5d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_61
    return-void

    :goto_62
    if-eqz v2, :cond_68

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_68
    throw v1
.end method

.method private deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3b

    if-eqz p1, :cond_3b

    const-string v0, "com.samsung.clipboardsaveservice/files/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    nop

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->validateTmpFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-direct {p0, p2}, Lcom/android/server/semclipboard/SemClipboardService;->validateTmpFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "extra_path"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3b
    return-void
.end method

.method private doSyncForFota(I)V
    .registers 11

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/clipboard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/shared/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8e

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSyncForFota : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/user/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/com.sec.knox.bridge/shared_prefs/deletedClips.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-direct {p0, p1, v3}, Lcom/android/server/semclipboard/SemClipboardService;->copyFileToOwner(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_83

    invoke-direct {p0, v5}, Lcom/android/server/semclipboard/SemClipboardService;->parseXML(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/server/semclipboard/SemClipboardService;->deleteDir(Ljava/io/File;)V

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, p1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateFotaClips(ILjava/util/ArrayList;)V

    const-string v6, "SemClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFotaClips : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :cond_83
    const-string v6, "SemClipboardService"

    const-string/jumbo v7, "tempfile is null"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    invoke-virtual {p0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->deleteDir(Ljava/io/File;)V

    :cond_8e
    return-void
.end method

.method private dump()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    const-string v1, "SemClipboardService"

    const-string v2, "====================================================="

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_3b

    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_3b
    const-string v1, "SemClipboardService"

    const-string v2, "====================================================="

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/semclipboard/SemClipboardProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "_data=? "

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_4d

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v5, Lcom/android/server/semclipboard/SemClipboardProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v2, v5

    goto :goto_64

    :cond_4d
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_data"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/semclipboard/SemClipboardProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_63} :catch_69
    .catchall {:try_start_6 .. :try_end_63} :catchall_67

    move-object v2, v5

    :goto_64
    if-eqz v3, :cond_73

    goto :goto_6f

    :catchall_67
    move-exception v4

    goto :goto_77

    :catch_69
    move-exception v4

    :try_start_6a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_67

    if-eqz v3, :cond_73

    :goto_6f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_77
    if-eqz v3, :cond_7d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_7d
    throw v4
.end method

.method private getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 11

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v2

    goto :goto_19

    :cond_18
    move v2, v1

    :goto_19
    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLatestItemInternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-nez p1, :cond_3d

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    goto :goto_76

    :cond_3d
    if-lez v0, :cond_5e

    if-lez v2, :cond_5e

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_5b

    move-object v5, v4

    goto :goto_5c

    :cond_5b
    move-object v5, v1

    :goto_5c
    move-object v3, v5

    goto :goto_76

    :cond_5e
    if-lez v0, :cond_67

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    goto :goto_76

    :cond_67
    if-lez v2, :cond_76

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v5, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    :cond_76
    :goto_76
    if-eqz v3, :cond_92

    const-string v1, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLatestItemInternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    instance-of v1, v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-eqz v1, :cond_b3

    move-object v1, v3

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a0

    return-object v3

    :cond_a0
    move-object v4, v3

    check-cast v4, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/semclipboard/SemClipboardService;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_b3

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v4, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setContentUri(Landroid/net/Uri;)V

    :cond_b3
    return-object v3
.end method

.method private getPersonaManager()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_15
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    const-string v0, "SemClipboardService"

    const-string/jumbo v1, "personaManager is null!"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private getSEAMSCategory(Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_83

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    const/16 v4, 0x80

    :try_start_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v0, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1c

    move-object v2, v4

    goto :goto_20

    :catch_1c
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    if-nez v2, :cond_39

    const-string v4, "SemClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appInfo is null for packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :cond_39
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->space:I

    const-string v4, "SemClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSEAMSCategory, before checking range, category: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", seinfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc9

    if-lt v1, v4, :cond_63

    const/16 v4, 0x1f4

    if-le v1, v4, :cond_64

    :cond_63
    const/4 v1, 0x0

    :cond_64
    const-string v4, "SemClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSEAMSCategory, space: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", seinfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return v1

    :cond_83
    const-string v2, "SemClipboardService"

    const-string v3, "Cannot get context for package manager"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static getService()Landroid/content/IClipboard;
    .registers 3

    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    return-object v0

    :cond_7
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    sget-object v1, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_1e

    const-string v1, "SemClipboardService"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    sget-object v1, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    return-object v1
.end method

.method private getUpdatedType(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .registers 8

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10

    const/16 v0, 0x100

    goto :goto_1c

    :cond_10
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    const/16 v0, 0x10

    :cond_1c
    :goto_1c
    return v0
.end method

.method private getUserId()I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_14
    const/4 v1, 0x0

    const-string v2, "SemClipboardService"

    const-string v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v1
.end method

.method private isAFWmode(I)Z
    .registers 13

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    move-wide v3, v1

    if-eqz p1, :cond_90

    :try_start_6
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    if-nez v5, :cond_15

    const-string/jumbo v5, "user"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IUserManager;

    iput-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v3, v5

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v5, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    const-string v8, "SemClipboardService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEnabled, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_5a} :catch_78
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5a} :catch_65
    .catchall {:try_start_6 .. :try_end_5a} :catchall_63

    if-eqz v6, :cond_60

    if-nez v7, :cond_60

    const/4 v8, 0x1

    goto :goto_61

    :cond_60
    const/4 v8, 0x0

    :goto_61
    move v0, v8

    goto :goto_90

    :catchall_63
    move-exception v5

    goto :goto_88

    :catch_65
    move-exception v5

    :try_start_66
    const-string v6, "SemClipboardService"

    const-string v7, "isEnabled() Exception!"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_63

    cmp-long v1, v3, v1

    if-eqz v1, :cond_95

    :goto_74
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_95

    :catch_78
    move-exception v5

    :try_start_79
    const-string v6, "SemClipboardService"

    const-string v7, "isEnabled() RemoteException!"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_63

    cmp-long v1, v3, v1

    if-eqz v1, :cond_95

    goto :goto_74

    :goto_88
    cmp-long v1, v3, v1

    if-eqz v1, :cond_8f

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_8f
    throw v5

    :cond_90
    :goto_90
    cmp-long v1, v3, v1

    if-eqz v1, :cond_95

    goto :goto_74

    :cond_95
    :goto_95
    return v0
.end method

.method private isCallerSystemOrSignature()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isUidSystem(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isUidSignature(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method private isEnabled(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->isAFWmode(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private isKioskEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKioskEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    return v1

    :catch_6
    move-exception v1

    return v0

    :catch_8
    move-exception v1

    return v0
.end method

.method private isSEContainerClipboardEnabled(I)I
    .registers 12

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v6, v9

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getSEContainerClipboardMode"

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_66

    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "getSEContainerClipboardMode"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_61

    if-nez v1, :cond_41

    nop

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v8

    :cond_41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    nop

    const-string v1, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catchall_61
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_66
    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is -1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isServiceCallFromOther()Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getCurrentListOwnerUid()I

    move-result v4

    const-string v5, "SemClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isServiceCallFromOther getPersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eq v1, v4, :cond_2f

    const/4 v5, 0x1

    return v5

    :cond_2f
    const/4 v5, 0x0

    return v5
.end method

.method private isUidSignature(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isUidSystem(I)Z
    .registers 4

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    if-nez p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private loadSEContainer()V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move-object v0, v2

    goto :goto_2c

    :catch_15
    move-exception v1

    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getPackageNameFromAppProcesses : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    const/4 v1, 0x0

    if-eqz v0, :cond_d3

    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4d

    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSEContainer, error getting SEAMS category value, cat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d3

    :cond_4d
    if-lez v1, :cond_85

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isSEContainerClipboardEnabled(I)I

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x1

    if-ne v4, v5, :cond_63

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_84

    :cond_63
    const-string v5, "SemClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSEContainter, cat:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", doesn\'t have clipboard enabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    :goto_84
    goto :goto_d3

    :cond_85
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v2

    if-eqz v2, :cond_a8

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_a8

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v3

    if-nez v3, :cond_a8

    const-string v3, "SemClipboardService"

    const-string v4, "loadSEContainer, before loadSECOntainerDB, isManagedProfile should have been false, cat :  userId + 1000"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    add-int/lit16 v4, v2, 0x3e8

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_d3

    :cond_a8
    const/16 v3, 0xa

    if-lt v2, v3, :cond_ce

    const/16 v3, 0xc2

    if-gt v2, v3, :cond_ce

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSEContainer, before loadSECOntainerDB, userId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    add-int/lit16 v4, v2, 0x3e8

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_d3

    :cond_ce
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    :cond_d3
    :goto_d3
    return-void
.end method

.method private notifyFilterUpdated(I)V
    .registers 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_4e

    :try_start_7
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4b

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_40

    :try_start_10
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    iget v8, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v9, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    invoke-interface {v6, p1}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onUpdateFilter(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_31} :catch_3c
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    :cond_31
    goto :goto_3d

    :catchall_32
    move-exception v4

    :try_start_33
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_3c
    move-exception v5

    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_40
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v2

    goto :goto_52

    :catchall_4b
    move-exception v3

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_52
    return-void
.end method

.method private notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_4e

    :try_start_7
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4b

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_40

    :try_start_10
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    iget v8, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v9, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    invoke-interface {v6, p1, p2}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onClipboardEvent(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_31} :catch_3c
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    :cond_31
    goto :goto_3d

    :catchall_32
    move-exception v4

    :try_start_33
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_3c
    move-exception v5

    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_40
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v2

    goto :goto_52

    :catchall_4b
    move-exception v3

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_52
    return-void
.end method

.method private notifyUserChanged(I)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_3d

    :try_start_d
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x1d

    iget v7, v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v8, v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2e

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/clipboard/IOnUserChangedListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/content/clipboard/IOnUserChangedListener;->onUserChanged(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2e} :catch_39
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    :cond_2e
    goto :goto_3a

    :catchall_2f
    move-exception v3

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_39
    move-exception v4

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_3d
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void
.end method

.method private parseXML(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_9
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    move-object v3, v5

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_20
    const/4 v6, 0x1

    if-eq v5, v6, :cond_5c

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    packed-switch v5, :pswitch_data_c0

    goto :goto_56

    :pswitch_2b
    const-string v7, "boolean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    const-string/jumbo v7, "name"

    invoke-interface {v4, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "SemClipboardService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseXML : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :pswitch_55
    nop

    :cond_56
    :goto_56
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5a} :catch_7b
    .catchall {:try_start_9 .. :try_end_5a} :catchall_79

    move v5, v7

    goto :goto_20

    :cond_5c
    nop

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    :goto_60
    goto :goto_a1

    :catch_61
    move-exception v1

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_69
    const-string v5, "inside exception for Close connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :catchall_79
    move-exception v1

    goto :goto_a2

    :catch_7b
    move-exception v1

    :try_start_7c
    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside exception for parsexml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_7c .. :try_end_92} :catchall_79

    if-eqz v2, :cond_a1

    :try_start_94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_60

    :catch_98
    move-exception v1

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_69

    :cond_a1
    :goto_a1
    return-object v0

    :goto_a2
    if-eqz v2, :cond_bf

    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_bf

    :catch_a8
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside exception for Close connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemClipboardService"

    invoke-static {v5, v4}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    :goto_bf
    throw v1

    :pswitch_data_c0
    .packed-switch 0x2
        :pswitch_55
        :pswitch_2b
    .end packed-switch
.end method

.method private registerKnoxModeChangeObserver()V
    .registers 5

    const-string v0, "SemClipboardService"

    const-string v1, "SemClipboardService.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/semclipboard/SemClipboardService$2;

    invoke-direct {v1, p0}, Lcom/android/server/semclipboard/SemClipboardService$2;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    const-string v2, "SemClipboardService"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_34

    :catch_16
    move-exception v0

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    return-void
.end method

.method private sendClipDataToOriginal(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    :try_start_a
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    const-string v1, "SemClipboardService"

    const-string v2, "String was copied.(Format.TEXT)"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    goto/16 :goto_e2

    :cond_23
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4b

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    :try_start_32
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    const-string v1, "SemClipboardService"

    const-string v2, "String was copied.(Format.HTML)"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    goto/16 :goto_e2

    :cond_4b
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6f

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    :try_start_56
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    const-string v1, "SemClipboardService"

    const-string v2, "String was copied.(Format.URI)"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6d
    goto/16 :goto_e2

    :cond_6f
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_92

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    :try_start_7a
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    const-string v1, "SemClipboardService"

    const-string v2, "String was copied.(Format.INTENT)"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_91
    goto :goto_e2

    :cond_92
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e2

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_a8
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_aa
    if-ge v4, v2, :cond_cb

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-nez v3, :cond_c0

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v3

    goto :goto_c8

    :cond_c0
    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v6}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    :goto_c8
    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    :cond_cb
    if-eqz v3, :cond_e1

    :try_start_cd
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    invoke-interface {v4, v3, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    const-string v4, "SemClipboardService"

    const-string v5, "String was copied.(Format.URI_LIST)"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_db} :catch_dc

    goto :goto_e1

    :catch_dc
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e2

    :cond_e1
    :goto_e1
    nop

    :cond_e2
    :goto_e2
    return-void
.end method

.method private sendLoggingForCB(ILjava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsLogging:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_61

    if-eqz p2, :cond_61

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_29

    const/16 v1, 0x8

    if-eq p1, v1, :cond_26

    const/16 v1, 0x10

    if-eq p1, v1, :cond_23

    const/16 v1, 0x20

    if-eq p1, v1, :cond_20

    const-string v0, "TEXT"

    goto :goto_2f

    :cond_20
    const-string v0, "URI_LIST"

    goto :goto_2f

    :cond_23
    const-string v0, "URI"

    goto :goto_2f

    :cond_26
    const-string v0, "INTENT"

    goto :goto_2f

    :cond_29
    const-string v0, "HTML"

    goto :goto_2f

    :cond_2c
    const-string v0, "BITMAP"

    nop

    :goto_2f
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.android.samsung.clipboarduiservice"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SemClipboardService"

    invoke-static {v3, p2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_69

    :cond_61
    const-string v0, "SemClipboardService"

    const-string/jumbo v1, "no logging!"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    return-void
.end method

.method private updateDataListChange(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method private validateTmpFilePath(Ljava/lang/String;)Z
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.samsung.clipboardsaveservice/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", CanonicalPath ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TMP_FILE_OWNER_CANONICAL_PATH : /data/data/com.samsung.clipboardsaveservice/files/, knoxCanonicalPath ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/com.samsung.clipboardsaveservice/files/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_95

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_95

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong file -  CanonicalPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_94} :catch_98

    return v1

    :cond_95
    nop

    const/4 v0, 0x1

    return v0

    :catch_98
    move-exception v0

    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public addClip(Landroid/content/ClipData;I)V
    .registers 6

    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/android/server/semclipboard/SemClipboardService;->setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I

    goto :goto_16

    :cond_f
    const-string v1, "SemClipboardService"

    const-string v2, "addClip() - data is null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method public addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    :try_start_3
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1a

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public addUserChangedListener(Lcom/samsung/android/content/clipboard/IOnUserChangedListener;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    :try_start_3
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1a

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public deleteDir(Ljava/io/File;)V
    .registers 3

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    return-void
.end method

.method public dismissDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e8

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_e8

    :cond_18
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v4, :cond_e6

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    if-eqz v3, :cond_37

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    add-int/2addr v5, v4

    move v2, v5

    goto :goto_38

    :cond_37
    move v2, v4

    :goto_38
    if-lez v2, :cond_e6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v6

    if-nez v6, :cond_6b

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    const/4 v6, 0x0

    :goto_49
    if-ge v6, v4, :cond_69

    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_66

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_69
    monitor-exit p0

    return-object v1

    :cond_6b
    if-eqz v3, :cond_7c

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isServiceCallFromOther()Z

    move-result v6

    if-eqz v6, :cond_7c

    const-string v6, "SemClipboardService"

    const-string v7, "SemClipboardService GetClipboardData() abnormal called!!!"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v1

    :cond_7c
    if-eqz v3, :cond_8a

    invoke-direct {p0, v3}, Lcom/android/server/semclipboard/SemClipboardService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    const-string v5, "SemClipboardService"

    const-string v6, "cbData in Knox"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_8a
    if-lez v4, :cond_dd

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_99

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    :cond_99
    invoke-direct {p0, v3}, Lcom/android/server/semclipboard/SemClipboardService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    move-object v5, v6

    const-string v6, "SemClipboardService"

    const-string/jumbo v7, "owner copy and paste cdData"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object v1, v5

    :goto_a8
    if-eqz v1, :cond_e6

    const-string v5, "SemClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItem id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", input id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    if-eq p1, v5, :cond_db

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v5

    if-eq v5, p1, :cond_db

    invoke-virtual {v1, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    move-object v0, v5

    goto :goto_e6

    :cond_db
    move-object v0, v1

    goto :goto_e6

    :cond_dd
    const-string v6, "SemClipboardService"

    const-string v7, "KNOX2 SYNC data has not paste item so return null "

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v1

    :cond_e6
    :goto_e6
    monitor-exit p0

    return-object v0

    :cond_e8
    :goto_e8
    const-string v0, "SemClipboardService"

    const-string v2, "getClipData() - Clipboard is not allowed to use."

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v1

    :catchall_f1
    move-exception v0

    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_1 .. :try_end_f3} :catchall_f1

    throw v0
.end method

.method public getClipedStrings(II)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isServiceCallFromOther()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "SemClipboardService"

    const-string v3, "SemClipboardService getClipedStrings() abnormal called!!!"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v0

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v4

    const-string v5, "SemClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getClipedStrings - userId : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SemClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getClipedStrings - isClipboardShareAllowed : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v5

    if-nez v5, :cond_67

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    const/16 v2, 0x14

    :cond_67
    const/4 v5, 0x0

    :goto_68
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    if-lt v5, v6, :cond_78

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    if-ge v2, v6, :cond_183

    :cond_78
    const/16 v6, 0x14

    if-ge v3, v6, :cond_183

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v9

    if-nez v9, :cond_a7

    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_a3

    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v9

    move-object v6, v9

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_126

    :cond_a3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17f

    :cond_a7
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v9

    if-eqz v9, :cond_11d

    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v9

    if-ge v2, v9, :cond_bc

    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v9

    move-object v8, v9

    :cond_bc
    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v9

    if-ge v5, v9, :cond_cb

    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v9

    move-object v7, v9

    :cond_cb
    if-nez v7, :cond_d1

    if-nez v8, :cond_d1

    goto/16 :goto_183

    :cond_d1
    if-nez v7, :cond_d7

    move-object v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_126

    :cond_d7
    if-nez v8, :cond_dd

    move-object v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_126

    :cond_dd
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_103

    const-string v9, "SemClipboardService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getClipedStrings : [getCurrentData], currentId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_126

    :cond_103
    const-string v9, "SemClipboardService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getClipedStrings : [getSharedData], sharedId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_126

    :cond_11d
    iget-object v9, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v9

    move-object v6, v9

    add-int/lit8 v5, v5, 0x1

    :goto_126
    if-nez v6, :cond_129

    goto :goto_17f

    :cond_129
    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_155

    move-object v9, v6

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_154

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, p2, :cond_154

    goto :goto_183

    :cond_154
    goto :goto_178

    :cond_155
    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_178

    move-object v9, v6

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_178

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, p2, :cond_178

    goto :goto_183

    :cond_178
    :goto_178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, p2, :cond_17f

    goto :goto_183

    :cond_17f
    :goto_17f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_68

    :cond_183
    :goto_183
    monitor-exit p0

    return-object v0

    :catchall_185
    move-exception v0

    monitor-exit p0
    :try_end_187
    .catchall {:try_start_1 .. :try_end_187} :catchall_185

    throw v0
.end method

.method public getClips()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_7f

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_56

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    nop

    :goto_34
    move v3, v4

    if-ge v3, v2, :cond_74

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_53

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v3, 0x1

    goto :goto_34

    :cond_56
    nop

    :goto_57
    move v3, v4

    if-ge v3, v1, :cond_74

    if-ge v3, v2, :cond_66

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_66
    sub-int v4, v3, v2

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_71
    add-int/lit8 v4, v3, 0x1

    goto :goto_57

    :cond_74
    new-instance v3, Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;-><init>(Lcom/android/server/semclipboard/SemClipboardService$1;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit p0

    return-object v0

    :cond_7f
    :goto_7f
    const-string v1, "SemClipboardService"

    const-string v2, "getClipData() - Clipboard is not allowed to use."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v0

    :catchall_88
    move-exception v0

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_1 .. :try_end_8a} :catchall_88

    throw v0
.end method

.method public getCount()I
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8a

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_8a

    :cond_20
    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardShareAllowed(I)Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    const/4 v2, 0x0

    nop

    :goto_2b
    if-ge v3, v1, :cond_45

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_42

    add-int/lit8 v2, v2, 0x1

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_45
    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v2

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int v3, v1, v2

    return v3

    :cond_89
    return v1

    :cond_8a
    :goto_8a
    const-string v2, "SemClipboardService"

    const-string v4, "getCount() - Clipboard is not allowed to use."

    invoke-static {v2, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getFilter()I
    .registers 2

    iget v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    return v0
.end method

.method public getPersonaId()I
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v3, :cond_1b

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    goto :goto_1f

    :cond_16
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_1f

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getUserId()I

    move-result v0

    :goto_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public isClipboardAllowed(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isClipboardShareAllowed(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardSharedAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isKnoxKeyguardShowing()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKnoxKeyguardShowing getPersonaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    return v1

    :cond_32
    const/4 v1, 0x0

    return v1
.end method

.method isKnoxTwoEnabled()Z
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKnoxTwoEnabled getPersonaId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "SemClipboardService"

    const-string v4, "Current user is a USER, hence return false"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_44
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_52

    const-string v3, "SemClipboardService"

    const-string v4, "Current user is BBC, hence return false"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_52
    const-string v2, "SemClipboardService"

    const-string v3, "Current user is a persona, hence return true"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_5b
    const-string v1, "SemClipboardService"

    const-string v3, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v1, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isPackageAllowed(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isPackageAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isPackageAllowedCLP(ZZZ)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isPackageAllowedCLP(ZZZ)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsDialogShowing:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public loadSEClipboard()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    :cond_d
    return-void
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "SemClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not enabled! multiUserMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    monitor-enter p0

    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode parentId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v4, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    :cond_62
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_1f .. :try_end_68} :catchall_6c

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyUserChanged(I)V

    return-void

    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public pasteClip(Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "SemClipboardService"

    const-string v2, "ClipboardDataPasteEvent is null."

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v1

    :cond_f
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    move-object v0, v2

    :cond_1e
    if-nez v0, :cond_38

    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find item whose ID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v1

    :cond_38
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->clipPickerDataList:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    invoke-interface {p1, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    goto :goto_16

    :cond_11
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {p1, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    :goto_16
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipBoardDataUiEventImp:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-interface {p1, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    goto :goto_22

    :cond_3f
    :goto_3f
    if-nez v0, :cond_47

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_47
    const-string v1, "SemClipboardService"

    const-string v2, "exist uiInterface!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    goto :goto_56

    :cond_4f
    const-string v0, "SemClipboardService"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public removeAll()Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->checkCallerIsSystemOrSignature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    if-lez v2, :cond_24

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v2

    or-int/2addr v0, v2

    :cond_24
    if-eqz v0, :cond_2e

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    invoke-direct {p0, v3}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    :cond_2e
    iput-boolean v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->KNOX_PASTE_FLAG:Z

    monitor-exit p0

    return v0

    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public removeClip(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->checkCallerIsSystemOrSignature()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    monitor-enter p0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeClipByID(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeClipByID(Ljava/lang/String;)Z

    move-result v2

    move v1, v2

    :cond_1c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    invoke-direct {p0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V

    :cond_26
    monitor-exit p0

    return v1

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    :try_start_3
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    goto :goto_11

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public removeUserChangedListener(Lcom/samsung/android/content/clipboard/IOnUserChangedListener;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    :try_start_3
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUserChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    goto :goto_11

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I
    .registers 16

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "not enabled! SetClipboardData()"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    if-nez p2, :cond_14

    const/4 v1, 0x3

    return v1

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_e6

    :cond_2a
    sget-boolean v1, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3b

    invoke-virtual {p0, v3, v3, v2}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowedCLP(ZZZ)Z

    const-string v1, "SemClipboardService"

    const-string/jumbo v4, "setClipData() - Clipboard is allowed to use CLP."

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const-string v1, "SemClipboardService"

    const-string v4, "==================================================================="

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    monitor-enter p0

    :try_start_45
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_50

    const-string v1, "SemClipboardService"

    const-string v4, "in synchronized"

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_e3

    if-eqz v5, :cond_89

    :try_start_5c
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p3, v2, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCurrentUserContext:Landroid/content/Context;
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_69} :catch_6a
    .catchall {:try_start_5c .. :try_end_69} :catchall_e3

    goto :goto_89

    :catch_6a
    move-exception v2

    :try_start_6b
    const-string v5, "SemClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callingPackage :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", NameNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v2

    if-nez v2, :cond_cb

    invoke-direct {p0, p3}, Lcom/android/server/semclipboard/SemClipboardService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    invoke-direct {p0, v2}, Lcom/android/server/semclipboard/SemClipboardService;->isSEContainerClipboardEnabled(I)I

    move-result v7

    const-string v8, "SemClipboardService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setClipboardData,callingPackage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "getSEAMSCategory result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eq v7, v3, :cond_ca

    invoke-direct {p0, p2, p3}, Lcom/android/server/semclipboard/SemClipboardService;->sendClipDataToOriginal(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;)V

    :cond_ca
    const/4 v0, 0x0

    :cond_cb
    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_6b .. :try_end_cc} :catchall_e3

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_e3
    move-exception v1

    :try_start_e4
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v1

    :cond_e6
    :goto_e6
    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "setClipData() - Clipboard is not allowed to use."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    return v1
.end method

.method public setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "SemClipboardService"

    const-string/jumbo v1, "not enabled! SetClipboardDataOriginalToEx()"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I

    move-result v0

    return v0
.end method

.method public setClipDataToSem(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I
    .registers 9

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "not enabled! SetClipboardDataWithoutSendingOrginalClipboard()"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    if-nez p2, :cond_14

    const/4 v1, 0x3

    return v1

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_64

    :cond_29
    sget-boolean v1, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowedCLP(ZZZ)Z

    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "setClipDataToSem() - Clipboard is allowed to use CLP."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iput p4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    const-string v1, "SemClipboardService"

    const-string v2, "======== SetClipboardDataWithoutSendingOrginalClipboard =========="

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_44
    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v1

    move v0, v1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_61

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1

    :cond_64
    :goto_64
    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "setClipDataToSem() - Clipboard is not allowed to use."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    return v1
.end method

.method public setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I
    .registers 9

    const/4 v0, 0x1

    if-eqz p3, :cond_11

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->canReadAcrossProfiles()Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "SemClipboardService"

    const-string v2, "disallow cross profile copy & paste!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    if-nez p2, :cond_15

    const/4 v1, 0x3

    return v1

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isClipboardAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowed(I)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_7a

    :cond_2a
    sget-boolean v1, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/semclipboard/SemClipboardService;->isPackageAllowedCLP(ZZZ)Z

    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "setData() - Clipboard is allowed to use CLP."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const-string v1, "SemClipboardService"

    const-string v2, "==================================================================="

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mCallingId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v0

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=================================================================== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7a
    :goto_7a
    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "setData() - Clipboard is not allowed to use."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    return v1
.end method

.method public showDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    const-string v0, "SemClipboardService"

    const-string/jumbo v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SemClipboardService"

    const-string/jumbo v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->loadSEContainer()V

    :cond_22
    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_2c
    goto :goto_b

    :cond_2d
    const-string v0, "SemClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 9

    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService;->checkCallerIsSystemOrSignature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_d
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    if-ge v0, v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move v2, v0

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2f
    const/4 v0, -0x1

    if-ne v2, v0, :cond_59

    move-object v4, v3

    move v3, v2

    move v2, v1

    :goto_35
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    if-ge v2, v5, :cond_57

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    move v3, v2

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_57
    move v2, v3

    move-object v3, v4

    :cond_59
    if-ne v2, v0, :cond_5c

    return v1

    :cond_5c
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, v2, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v2, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    :cond_6a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    invoke-direct {p0, p2, v3}, Lcom/android/server/semclipboard/SemClipboardService;->getUpdatedType(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    :cond_74
    return v0
.end method

.method public updateDialogShowingState(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mIsDialogShowing:Z

    return-void
.end method

.method public updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyFilterUpdated(I)V

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isShowing()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateFilterWithInputType(IILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    iput-object p3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyFilterUpdated(I)V

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
