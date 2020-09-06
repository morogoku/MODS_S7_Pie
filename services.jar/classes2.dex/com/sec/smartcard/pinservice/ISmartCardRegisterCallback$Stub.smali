.class public abstract Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;
.super Landroid/os/Binder;
.source "ISmartCardRegisterCallback.java"

# interfaces
.implements Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.smartcard.pinservice.ISmartCardRegisterCallback"

.field static final TRANSACTION_onComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.smartcard.pinservice.ISmartCardRegisterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.sec.smartcard.pinservice.ISmartCardRegisterCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    return-object v1

    :cond_14
    new-instance v1, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_d

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_d
    const-string v1, "com.sec.smartcard.pinservice.ISmartCardRegisterCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_13
    const-string v1, "com.sec.smartcard.pinservice.ISmartCardRegisterCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->onComplete(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
