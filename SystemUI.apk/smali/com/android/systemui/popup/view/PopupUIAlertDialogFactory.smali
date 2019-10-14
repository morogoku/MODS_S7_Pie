.class public Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;
.super Ljava/lang/Object;
.source "PopupUIAlertDialogFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissDialog:Ljava/lang/Runnable;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mShowingDialog:Ljava/lang/Runnable;

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtilFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getUtils()Lcom/android/systemui/popup/util/PopupUIUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getToastWrapper()Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getDisplayManagerWrapper()Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getKeyguardUpdateMonitorWrapper()Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    return-object v0
.end method

.method private initializeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    :cond_1
    return-void
.end method


# virtual methods
.method public getDataConnectionDialog(IZLandroid/app/PendingIntent;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 11

    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isCellularDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v1, "PopupUIAlertDialogFactory"

    const-string v2, "Attempt mobile data connection is blocked by Knox"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    const v1, 0x7f120a67

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    iget-object v2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f120a61

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

    iget-object v4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    iget-object v9, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    iget-object v10, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    move-object v3, v0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;-><init>(Landroid/content/Context;IZLandroid/app/PendingIntent;Lcom/android/systemui/popup/util/PopupUILogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFlightModeDialog()Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    new-instance v0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/popup/util/PopupUIUtil;->isVoLTEVideoCallSupportedSIM(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/popup/view/FlightModeEnableDialog;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object v0
.end method

.method public getSimTrayDialog(I)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    new-instance v6, Lcom/android/systemui/popup/view/SimTrayDialog;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/popup/view/SimTrayDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/popup/util/DisplayManagerWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object v0
.end method
