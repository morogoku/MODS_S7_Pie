.class public abstract Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;
.super Landroid/os/Binder;
.source "IGenericSSOCallback.java"

# interfaces
.implements Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.sso.authrequest.IGenericSSOCallback"

.field static final TRANSACTION_onFail:I = 0x3

.field static final TRANSACTION_tokenInfoSuccess:I = 0x1

.field static final TRANSACTION_userInfoSuccess:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.sso.authrequest.IGenericSSOCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.samsung.android.knox.sso.authrequest.IGenericSSOCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    return-object v1

    :cond_14
    new-instance v1, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.sso.authrequest.IGenericSSOCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_53

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_58

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;->onFail(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    sget-object v1, Lcom/samsung/android/knox/sso/common/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sso/common/UserInfo;

    goto :goto_32

    :cond_31
    nop

    :goto_32
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;->userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4b

    sget-object v1, Lcom/samsung/android/knox/sso/common/TokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sso/common/TokenInfo;

    goto :goto_4c

    :cond_4b
    nop

    :goto_4c
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;->tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_53
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_39
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method
