.class public Lcom/android/server/IpSecService$RefcountedResource;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefcountedResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/IpSecService$IResource;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/IpSecService$RefcountedResource;",
            ">;"
        }
    .end annotation
.end field

.field mRefCount:I

.field private final mResource:Lcom/android/server/IpSecService$IResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method varargs constructor <init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/IBinder;",
            "[",
            "Lcom/android/server/IpSecService$RefcountedResource;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/IpSecService$RefcountedResource;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    monitor-enter p1

    :try_start_9
    iput-object p2, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/IpSecService$RefcountedResource;->mChildren:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v1, :cond_29

    aget-object v4, p4, v3

    iget-object v5, p0, Lcom/android/server/IpSecService$RefcountedResource;->mChildren:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v4, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_35

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_35

    goto :goto_33

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/IpSecService$RefcountedResource;->binderDied()V

    :goto_33
    monitor-exit p1

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->this$0:Lcom/android/server/IpSecService;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/IpSecService$RefcountedResource;->userRelease()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_20

    :catchall_7
    move-exception v1

    goto :goto_22

    :catch_9
    move-exception v1

    :try_start_a
    const-string v2, "IpSecService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to release resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_7

    throw v1
.end method

.method public getResource()Lcom/android/server/IpSecService$IResource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    return-object v0
.end method

.method public releaseReference()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "IpSecService.this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    iget v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    if-lez v0, :cond_b

    return-void

    :cond_b
    iget v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    if-ltz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    invoke-interface {v0}, Lcom/android/server/IpSecService$IResource;->freeUnderlyingResources()V

    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$RefcountedResource;

    invoke-virtual {v1}, Lcom/android/server/IpSecService$RefcountedResource;->releaseReference()V

    goto :goto_1a

    :cond_2a
    iget v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    return-void

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid operation - resource has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$RefcountedResource;->mChildren:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userRelease()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "IpSecService.this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    invoke-interface {v0}, Lcom/android/server/IpSecService$IResource;->invalidate()V

    invoke-virtual {p0}, Lcom/android/server/IpSecService$RefcountedResource;->releaseReference()V

    return-void
.end method
