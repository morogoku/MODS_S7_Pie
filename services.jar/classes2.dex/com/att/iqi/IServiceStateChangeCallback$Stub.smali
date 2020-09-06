.class public abstract Lcom/att/iqi/IServiceStateChangeCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/att/iqi/IServiceStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IServiceStateChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IServiceStateChangeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.att.iqi.IServiceStateChangeCallback"

.field static final TRANSACTION_onServiceChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.att.iqi.IServiceStateChangeCallback"

    invoke-virtual {p0, p0, v0}, Lcom/att/iqi/IServiceStateChangeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IServiceStateChangeCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.att.iqi.IServiceStateChangeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/att/iqi/IServiceStateChangeCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/att/iqi/IServiceStateChangeCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/att/iqi/IServiceStateChangeCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/att/iqi/IServiceStateChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    move-result p1

    return p1

    :cond_d
    const-string p1, "com.att.iqi.IServiceStateChangeCallback"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_13
    const-string p1, "com.att.iqi.IServiceStateChangeCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_20

    move p1, v0

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-virtual {p0, p1}, Lcom/att/iqi/IServiceStateChangeCallback$Stub;->onServiceChange(Z)V

    return v0
.end method
