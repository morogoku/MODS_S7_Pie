.class final Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;
.super Landroid/media/IRemoteDisplayCallback$Stub;
.source "RemoteDisplayProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderCallback"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 3

    invoke-direct {p0}, Landroid/media/IRemoteDisplayCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onStateChanged(Landroid/media/RemoteDisplayState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->postStateChanged(Landroid/media/RemoteDisplayState;)V

    :cond_d
    return-void
.end method
