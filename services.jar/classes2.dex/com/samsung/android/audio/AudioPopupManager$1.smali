.class Lcom/samsung/android/audio/AudioPopupManager$1;
.super Ljava/lang/Object;
.source "AudioPopupManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/audio/AudioPopupManager;->showPopupWindow(Ljava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/audio/AudioPopupManager;

.field final synthetic val$activePid:I

.field final synthetic val$appNameKey:Ljava/lang/String;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/audio/AudioPopupManager;Landroid/widget/CheckBox;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    iput-object p2, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->val$appNameKey:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->val$activePid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020439

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    # getter for: Lcom/samsung/android/audio/AudioPopupManager;->mPopupRemind:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/samsung/android/audio/AudioPopupManager;->access$000(Lcom/samsung/android/audio/AudioPopupManager;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->val$appNameKey:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->val$activePid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    # getter for: Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/samsung/android/audio/AudioPopupManager;->access$200(Lcom/samsung/android/audio/AudioPopupManager;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    # getter for: Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/audio/AudioPopupManager;->access$100(Lcom/samsung/android/audio/AudioPopupManager;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0, v1}, Lcom/samsung/android/audio/AudioPopupManager;->access$202(Lcom/samsung/android/audio/AudioPopupManager;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/audio/AudioPopupManager;->mViewAdded:Z
    invoke-static {v0, v2}, Lcom/samsung/android/audio/AudioPopupManager;->access$302(Lcom/samsung/android/audio/AudioPopupManager;Z)Z

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$1;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    # setter for: Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/samsung/android/audio/AudioPopupManager;->access$102(Lcom/samsung/android/audio/AudioPopupManager;Landroid/view/View;)Landroid/view/View;

    :cond_42
    return-void
.end method
