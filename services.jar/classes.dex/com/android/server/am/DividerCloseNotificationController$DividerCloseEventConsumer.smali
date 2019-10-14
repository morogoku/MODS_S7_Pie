.class public interface abstract Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;
.super Ljava/lang/Object;
.source "DividerCloseNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DividerCloseNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DividerCloseEventConsumer"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract accept(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
