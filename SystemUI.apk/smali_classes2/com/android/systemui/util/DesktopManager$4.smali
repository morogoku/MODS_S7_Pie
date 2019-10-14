.class Lcom/android/systemui/util/DesktopManager$4;
.super Ljava/lang/Object;
.source "DesktopManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesktopModeStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0, p1}, Lcom/android/systemui/util/DesktopManager;->access$1300(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/util/DesktopManager;->access$1400(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0, p1}, Lcom/android/systemui/util/DesktopManager;->access$1500(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$300(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
