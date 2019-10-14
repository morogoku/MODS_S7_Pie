.class Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    return-void
.end method


# virtual methods
.method public onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V
    .locals 0

    return-void
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "PipManager"

    const-string/jumbo v1, "onMultiWindowEnableChanged, Try to register pinnedStackListener."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$1000(Lcom/android/systemui/pip/phone/PipManager;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->access$900(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PipManager"

    const-string v2, "Failed to register pinned stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onSnapWindowVisibilityChanged(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method
