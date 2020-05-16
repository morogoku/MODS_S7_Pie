.class public Lcom/android/systemui/popup/view/DataConnectionErrorDialog;
.super Ljava/lang/Object;
.source "DataConnectionErrorDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mPIntent:Landroid/app/PendingIntent;

.field private mRetry:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLandroid/app/PendingIntent;Lcom/android/systemui/popup/util/PopupUILogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iput-boolean p3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    iput-object p4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mPIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    new-instance v0, Lcom/android/systemui/popup/data/DataConnectionErrorData;

    invoke-direct {v0, p5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;-><init>(Lcom/android/systemui/popup/util/PopupUILogWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    invoke-direct {p0, p6, p7}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->createDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getTitle(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getBody(I)I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getBody(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v6, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButton(IZ)I

    move-result v4

    if-eq v4, v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v6, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v7, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButton(IZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v6, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v7, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getNButton(IZ)I

    move-result v5

    if-eq v5, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v6, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v7, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getNButton(IZ)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f13027a

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->getPButtonClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_4

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v6, 0x7d8

    invoke-virtual {v2, v6}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v2
.end method

.method private getPButtonClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    iget-object v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mPIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/systemui/popup/view/-$$Lambda$DataConnectionErrorDialog$5nxE5Y1NHZmYAxUay389tgqou2w;

    invoke-direct {v1, v0}, Lcom/android/systemui/popup/view/-$$Lambda$DataConnectionErrorDialog$5nxE5Y1NHZmYAxUay389tgqou2w;-><init>(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method static synthetic lambda$getPButtonClickListener$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v1, "DataConnectionErrorDialog"

    const-string v2, "dismiss previous dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v2, "DataConnectionErrorDialog"

    const-string v3, "BadTokenException occurs. The dialog show will be ignored."

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
