.class Lcom/android/server/power/ShutdownThread$4$2$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread$4$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$4$2;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$4$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4$2$1;->this$1:Lcom/android/server/power/ShutdownThread$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x1

    # setter for: Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$2402(Z)Z

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$2602(Z)Z

    # setter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$2702(Z)Z

    # setter for: Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$2802(Z)Z

    # setter for: Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$2902(Z)Z

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$3002(Ljava/lang/String;)Ljava/lang/String;

    nop

    :goto_16
    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_80

    if-nez v1, :cond_3e

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2$1;->this$1:Lcom/android/server/power/ShutdownThread$4$2;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread$4$2;->this$0:Lcom/android/server/power/ShutdownThread$4;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    # getter for: Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Z

    move-result v4

    # invokes: Lcom/android/server/power/ShutdownThread;->getButtonDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread;->access$3100(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7d

    :cond_3e
    if-ne v1, v0, :cond_5c

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2$1;->this$1:Lcom/android/server/power/ShutdownThread$4$2;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread$4$2;->this$0:Lcom/android/server/power/ShutdownThread$4;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->getTitleText()I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3200()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7d

    :cond_5c
    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2$1;->this$1:Lcom/android/server/power/ShutdownThread$4$2;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread$4$2;->this$0:Lcom/android/server/power/ShutdownThread$4;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$4$2$1;->this$1:Lcom/android/server/power/ShutdownThread$4$2;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread$4$2;->this$0:Lcom/android/server/power/ShutdownThread$4;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->getDescriptionText(Landroid/content/Context;)I
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$3300(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_80
    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
