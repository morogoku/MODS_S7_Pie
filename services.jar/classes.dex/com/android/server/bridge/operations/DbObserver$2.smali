.class Lcom/android/server/bridge/operations/DbObserver$2;
.super Ljava/lang/Object;
.source "DbObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;
    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$100(Lcom/android/server/bridge/operations/DbObserver;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    const-string v1, "Calendar"

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mUserId:I
    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->access$000(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    return-void
.end method
