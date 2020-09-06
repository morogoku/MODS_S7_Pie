.class Lcom/android/systemui/onehandoperation/OHOService$1;
.super Ljava/lang/Object;
.source "OHOService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/onehandoperation/OHOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/onehandoperation/OHOService;


# direct methods
.method constructor <init>(Lcom/android/systemui/onehandoperation/OHOService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/onehandoperation/OHOService$1;->this$0:Lcom/android/systemui/onehandoperation/OHOService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/onehandoperation/OHOService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OHOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/onehandoperation/OHOService$1;->this$0:Lcom/android/systemui/onehandoperation/OHOService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/onehandoperation/OHOService;->access$002(Lcom/android/systemui/onehandoperation/OHOService;Z)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/onehandoperation/OHOService$1;->this$0:Lcom/android/systemui/onehandoperation/OHOService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/onehandoperation/OHOService;->access$002(Lcom/android/systemui/onehandoperation/OHOService;Z)Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/onehandoperation/OHOService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OHOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected() alive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/onehandoperation/OHOService$1;->this$0:Lcom/android/systemui/onehandoperation/OHOService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/onehandoperation/OHOService;->access$002(Lcom/android/systemui/onehandoperation/OHOService;Z)Z

    invoke-static {}, Lcom/android/systemui/onehandoperation/OHOService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OHOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected() arg0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
