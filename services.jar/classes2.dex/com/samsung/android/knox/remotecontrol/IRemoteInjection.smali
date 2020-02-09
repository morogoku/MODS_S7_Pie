.class public interface abstract Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
.super Ljava/lang/Object;
.source "IRemoteInjection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;
    }
.end annotation


# virtual methods
.method public abstract allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateRemoteScreenDimensionsAndCallerUid(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
