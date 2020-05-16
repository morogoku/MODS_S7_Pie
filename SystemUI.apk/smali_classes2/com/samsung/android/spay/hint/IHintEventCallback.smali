.class public interface abstract Lcom/samsung/android/spay/hint/IHintEventCallback;
.super Ljava/lang/Object;
.source "IHintEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spay/hint/IHintEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onHintVisibilityChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
