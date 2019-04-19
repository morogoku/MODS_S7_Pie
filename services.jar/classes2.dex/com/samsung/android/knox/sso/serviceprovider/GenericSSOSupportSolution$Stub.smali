.class public abstract Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;
.super Landroid/os/Binder;
.source "GenericSSOSupportSolution.java"

# interfaces
.implements Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.sso.serviceprovider.GenericSSOSupportSolution"

.field static final TRANSACTION_acquireToken:I = 0x1

.field static final TRANSACTION_acquireTokenByRefreshToken:I = 0x4

.field static final TRANSACTION_acquireUserInfo:I = 0x2

.field static final TRANSACTION_acquireWebService:I = 0x3

.field static final TRANSACTION_forceAuthenticate:I = 0x6

.field static final TRANSACTION_pushAuthenticatorConfig:I = 0x7

.field static final TRANSACTION_unregister:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.sso.serviceprovider.GenericSSOSupportSolution"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.samsung.android.knox.sso.serviceprovider.GenericSSOSupportSolution"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    return-object v1

    :cond_14
    new-instance v1, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.sso.serviceprovider.GenericSSOSupportSolution"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_10e

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_112

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    goto :goto_26

    :cond_25
    nop

    :goto_26
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    goto :goto_46

    :cond_45
    nop

    :goto_46
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->forceAuthenticate(Landroid/os/Bundle;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    goto :goto_66

    :cond_65
    nop

    :goto_66
    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->unregister(Landroid/os/Bundle;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_84

    sget-object v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    goto :goto_85

    :cond_84
    nop

    :goto_85
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->acquireTokenByRefreshToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_95

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Lcom/samsung/android/knox/sso/common/TokenInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_98

    :cond_95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_98
    return v2

    :pswitch_99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ab

    sget-object v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    goto :goto_ac

    :cond_ab
    nop

    :goto_ac
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->acquireWebService(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_bc

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_bf

    :cond_bc
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_bf
    return v2

    :pswitch_c0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d2

    sget-object v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    goto :goto_d3

    :cond_d2
    nop

    :goto_d3
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->acquireUserInfo(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/UserInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_e3

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Lcom/samsung/android/knox/sso/common/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e6

    :cond_e3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e6
    return v2

    :pswitch_e7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f9

    sget-object v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    goto :goto_fa

    :cond_f9
    nop

    :goto_fa
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_10a

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Lcom/samsung/android/knox/sso/common/TokenInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10d

    :cond_10a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10d
    return v2

    :cond_10e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_c0
        :pswitch_99
        :pswitch_72
        :pswitch_52
        :pswitch_32
        :pswitch_12
    .end packed-switch
.end method
