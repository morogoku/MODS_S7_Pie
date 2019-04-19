.class public Lcom/android/systemui/popup/util/PopupUIToastWrapper;
.super Ljava/lang/Object;
.source "PopupUIToastWrapper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public makeToast(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public makeToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
