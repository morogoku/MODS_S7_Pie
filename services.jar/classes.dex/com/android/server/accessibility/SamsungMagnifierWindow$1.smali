.class Lcom/android/server/accessibility/SamsungMagnifierWindow$1;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_89

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v5, :cond_3d

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v5

    if-nez v5, :cond_3d

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$100()Z

    move-result v5

    if-nez v5, :cond_3d

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Screen On :: Magnifier Window is showed."

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V
    invoke-static {v5, v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$300(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    goto :goto_89

    :cond_3d
    if-ne v3, v6, :cond_58

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v5

    if-eqz v5, :cond_58

    if-eqz v1, :cond_58

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Screen Off :: Magnifier Window is hided."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$400(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    goto :goto_89

    :cond_58
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v5

    if-eqz v5, :cond_89

    if-eqz v1, :cond_89

    if-nez v2, :cond_89

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Screen On :: Magnifier Window is hided & showed."

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$400(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;Z)Z

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V
    invoke-static {v5, v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$300(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$702(Ljava/lang/String;)Ljava/lang/String;

    :cond_89
    :goto_89
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
