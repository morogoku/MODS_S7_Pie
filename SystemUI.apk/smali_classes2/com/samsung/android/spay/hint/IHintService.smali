.class public interface abstract Lcom/samsung/android/spay/hint/IHintService;
.super Ljava/lang/Object;
.source "IHintService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spay/hint/IHintService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getHintWidth()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isHintShowing()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerHintEventCallback(Lcom/samsung/android/spay/hint/IHintEventCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterHintEventCallback(Lcom/samsung/android/spay/hint/IHintEventCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
