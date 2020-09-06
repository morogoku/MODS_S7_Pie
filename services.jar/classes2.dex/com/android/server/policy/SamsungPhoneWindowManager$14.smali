.class Lcom/android/server/policy/SamsungPhoneWindowManager$14;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyMobileKeyboardCoverChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_11
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040a92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10402e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1502(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method
