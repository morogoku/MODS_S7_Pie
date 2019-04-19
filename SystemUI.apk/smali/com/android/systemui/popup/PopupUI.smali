.class public Lcom/android/systemui/popup/PopupUI;
.super Lcom/android/systemui/SystemUI;
.source "PopupUI.java"


# instance fields
.field private mHasMobileDataFeature:Z

.field private mHasVoiceCallingFeature:Z

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mPopupUIReceiver:Landroid/content/BroadcastReceiver;

.field private mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

.field private mViewModelFactory:Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;

.field private mViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/popup/PopupUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/PopupUI$1;-><init>(Lcom/android/systemui/popup/PopupUI;)V

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/util/PopupUILogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/popup/PopupUI;->mHasMobileDataFeature:Z

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/popup/PopupUI;->mHasVoiceCallingFeature:Z

    new-instance v1, Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    iget-object v3, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    new-instance v1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/popup/PopupUI;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    new-instance v4, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/popup/PopupUI;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtilFactory;)V

    iget-boolean v5, p0, Lcom/android/systemui/popup/PopupUI;->mHasMobileDataFeature:Z

    iget-boolean v6, p0, Lcom/android/systemui/popup/PopupUI;->mHasVoiceCallingFeature:Z

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;-><init>(Lcom/android/systemui/popup/util/PopupUIUtilFactory;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;ZZ)V

    iput-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelFactory:Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelFactory:Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;

    invoke-virtual {v1}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->getPopupUIViewModelList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    invoke-interface {v4}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.systemui.POPUP_UI_PERMISSION"

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
