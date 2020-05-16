.class public Lcom/android/systemui/popup/view/FlightModeEnableDialog;
.super Ljava/lang/Object;
.source "FlightModeEnableDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mIsVolteVideoCallSupported:Z

.field private mShowRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mIsVolteVideoCallSupported:Z

    iput-object p3, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mShowRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f13027a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120421

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mIsVolteVideoCallSupported:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120420

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12041f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d34

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
