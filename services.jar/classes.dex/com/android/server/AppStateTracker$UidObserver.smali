.class final Lcom/android/server/AppStateTracker$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$UidObserver;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker$MyHandler;->onUidActive(I)V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidGone(IZ)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidIdle(IZ)V

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidStateChanged(II)V

    return-void
.end method
