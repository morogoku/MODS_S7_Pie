.class Lcom/android/server/sepunion/SemUnionMasterService$1;
.super Lcom/samsung/android/sepunion/SemUnionManagerLocal;
.source "SemUnionMasterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemUnionMasterService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemUnionMasterService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemUnionMasterService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMasterService$1;->this$0:Lcom/android/server/sepunion/SemUnionMasterService;

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService$1;->this$0:Lcom/android/server/sepunion/SemUnionMasterService;

    # getter for: Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterService;->access$000(Lcom/android/server/sepunion/SemUnionMasterService;)Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->accessoryStateChanged(Z[B[B)V

    return-void
.end method

.method public createSemSystemService(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService$1;->this$0:Lcom/android/server/sepunion/SemUnionMasterService;

    # getter for: Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterService;->access$000(Lcom/android/server/sepunion/SemUnionMasterService;)Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->createSemSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService$1;->this$0:Lcom/android/server/sepunion/SemUnionMasterService;

    # getter for: Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterService;->access$000(Lcom/android/server/sepunion/SemUnionMasterService;)Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService$1;->this$0:Lcom/android/server/sepunion/SemUnionMasterService;

    # getter for: Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterService;->access$000(Lcom/android/server/sepunion/SemUnionMasterService;)Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService$1;->this$0:Lcom/android/server/sepunion/SemUnionMasterService;

    # getter for: Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterService;->access$000(Lcom/android/server/sepunion/SemUnionMasterService;)Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public screenTurnedOff()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService$1;->this$0:Lcom/android/server/sepunion/SemUnionMasterService;

    # getter for: Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterService;->access$000(Lcom/android/server/sepunion/SemUnionMasterService;)Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->screenTurnedOff()V

    return-void
.end method
