.class public interface abstract Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
.super Ljava/lang/Object;
.source "SideScreenChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SideScreenChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SideScreenEventConsumer"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract accept(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
