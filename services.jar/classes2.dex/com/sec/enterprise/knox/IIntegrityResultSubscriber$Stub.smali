.class public abstract Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;
.super Landroid/os/Binder;
.source "IIntegrityResultSubscriber.java"

# interfaces
.implements Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.IIntegrityResultSubscriber"

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onProgress:I = 0x2

.field static final TRANSACTION_onReady:I = 0x1

.field static final TRANSACTION_onRuntimeViolation:I = 0x4

.field static final TRANSACTION_onSuccess:I = 0x7

.field static final TRANSACTION_onTimaViolation:I = 0x5

.field static final TRANSACTION_onViolation:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.enterprise.knox.IIntegrityResultSubscriber"

    invoke-virtual {p0, p0, v0}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.sec.enterprise.knox.IIntegrityResultSubscriber"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-object v1

    :cond_14
    new-instance v1, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.sec.enterprise.knox.IIntegrityResultSubscriber"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_90

    packed-switch v8, :pswitch_data_96

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_16
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;->onSuccess(I)V

    return v11

    :pswitch_21
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;->onError(IILjava/lang/String;I)V

    return v11

    :pswitch_38
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;->onTimaViolation(Ljava/lang/String;)V

    return v11

    :pswitch_43
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;->onRuntimeViolation(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :pswitch_52
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object v0, v7

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;->onViolation(IILjava/lang/String;[B[BI)V

    return v11

    :pswitch_7a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;->onProgress(II)V

    return v11

    :pswitch_89
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;->onReady()V

    return v11

    :cond_90
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_89
        :pswitch_7a
        :pswitch_52
        :pswitch_43
        :pswitch_38
        :pswitch_21
        :pswitch_16
    .end packed-switch
.end method
