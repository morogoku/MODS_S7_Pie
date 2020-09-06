.class public abstract Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseIntegrityServiceAgentCallback.java"

# interfaces
.implements Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.IEnterpriseIntegrityServiceAgentCallback"

.field static final TRANSACTION_checkResult:I = 0x2

.field static final TRANSACTION_commit:I = 0x11

.field static final TRANSACTION_delete3rdPartyBaseLine:I = 0x10

.field static final TRANSACTION_delete3rdPartyBaseline:I = 0x16

.field static final TRANSACTION_deletePlatformBaseLine:I = 0xc

.field static final TRANSACTION_deletePreBaseLine:I = 0x8

.field static final TRANSACTION_getPackageInfo:I = 0x15

.field static final TRANSACTION_getPackageList:I = 0x14

.field static final TRANSACTION_getVersion:I = 0x13

.field static final TRANSACTION_performPlatformScan:I = 0x1

.field static final TRANSACTION_progress:I = 0x5

.field static final TRANSACTION_read3rdPartyBaseLine:I = 0xf

.field static final TRANSACTION_readPlatformBaseLine:I = 0xb

.field static final TRANSACTION_readPreBaseLine:I = 0x7

.field static final TRANSACTION_reportError:I = 0x3

.field static final TRANSACTION_reportSuccess:I = 0x4

.field static final TRANSACTION_rollback:I = 0x12

.field static final TRANSACTION_store3rdPartyBaseLine:I = 0xd

.field static final TRANSACTION_storePlatformBaseLine:I = 0x9

.field static final TRANSACTION_storePreBaseLine:I = 0x6

.field static final TRANSACTION_update3rdPartyBaseLine:I = 0xe

.field static final TRANSACTION_updatePlatformBaseLine:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.enterprise.knox.IEnterpriseIntegrityServiceAgentCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.sec.enterprise.knox.IEnterpriseIntegrityServiceAgentCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;

    return-object v1

    :cond_14
    new-instance v1, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.sec.enterprise.knox.IEnterpriseIntegrityServiceAgentCallback"

    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_1a2

    packed-switch v8, :pswitch_data_1a6

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->delete3rdPartyBaseline()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_26
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->getPackageInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_38
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->getPackageList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_46
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_54
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->rollback()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_62
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->commit()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_70
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->delete3rdPartyBaseLine(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_82
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->read3rdPartyBaseLine(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v12

    :pswitch_94
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->update3rdPartyBaseLine(Ljava/lang/String;[B)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_aa
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->store3rdPartyBaseLine(Ljava/lang/String;[B)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_c0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->deletePlatformBaseLine()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_ce
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->readPlatformBaseLine()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v12

    :pswitch_dc
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->updatePlatformBaseLine([B)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_ee
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->storePlatformBaseLine([B)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_100
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->deletePreBaseLine()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_10e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->readPreBaseLine()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v12

    :pswitch_11c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->storePreBaseLine([B)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_12e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->progress(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_140
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->reportSuccess(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_14e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->reportError(IILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_168
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object v0, v7

    move v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->checkResult(IILjava/lang/String;[B[BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_194
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;->performPlatformScan()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v12

    :cond_1a2
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_194
        :pswitch_168
        :pswitch_14e
        :pswitch_140
        :pswitch_12e
        :pswitch_11c
        :pswitch_10e
        :pswitch_100
        :pswitch_ee
        :pswitch_dc
        :pswitch_ce
        :pswitch_c0
        :pswitch_aa
        :pswitch_94
        :pswitch_82
        :pswitch_70
        :pswitch_62
        :pswitch_54
        :pswitch_46
        :pswitch_38
        :pswitch_26
        :pswitch_18
    .end packed-switch
.end method
