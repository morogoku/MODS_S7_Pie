.class public abstract Lcom/att/iqi/IMetricQueryCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/att/iqi/IMetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IMetricQueryCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IMetricQueryCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.att.iqi.IMetricQueryCallback"

.field static final TRANSACTION_onMetricQueried:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.att.iqi.IMetricQueryCallback"

    invoke-virtual {p0, p0, v0}, Lcom/att/iqi/IMetricQueryCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricQueryCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.att.iqi.IMetricQueryCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/att/iqi/IMetricQueryCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/att/iqi/IMetricQueryCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/att/iqi/IMetricQueryCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/att/iqi/IMetricQueryCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string p1, "com.att.iqi.IMetricQueryCallback"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_13
    const-string p1, "com.att.iqi.IMetricQueryCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27

    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/att/iqi/IMetricQueryCallback$Stub;->onMetricQueried(Lcom/att/iqi/lib/Metric$ID;[B)V

    return v0
.end method
