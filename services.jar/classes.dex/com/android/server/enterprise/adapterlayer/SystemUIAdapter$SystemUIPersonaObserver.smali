.class Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;
.super Lcom/samsung/android/knox/SemPersonaObserver;
.source "SystemUIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemUIPersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Landroid/content/Context;II)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/SemPersonaObserver;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSessionExpired()V
    .registers 1

    return-void
.end method

.method public onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->containerId:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemUIPersonaObserver - deleting com container : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    # invokes: Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I
    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$200(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V

    :cond_35
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->containerId:I

    # invokes: Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->unregistPersonaObserver(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$300(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    return-void
.end method
