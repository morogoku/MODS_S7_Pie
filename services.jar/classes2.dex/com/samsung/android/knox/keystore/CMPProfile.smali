.class public Lcom/samsung/android/knox/keystore/CMPProfile;
.super Lcom/samsung/android/knox/keystore/EnrollmentProfile;
.source "CMPProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CMP_HTTP:I = 0x0

.field public static final CMP_POP_CHALLENGERESP:I = 0x1

.field public static final CMP_POP_INDIRECTENCRYPTCERT:I = 0x2

.field public static final CMP_POP_SIGNATURE:I = 0x0

.field public static final CMP_TCP:I = 0x1


# instance fields
.field public cmpServerURL:Ljava/lang/String;

.field public iakLength:J

.field public initialAuthenticationKey:[B

.field public issuerDN:Ljava/lang/String;

.field public keyUsage:I

.field public notAfterDate:J

.field public notBeforeDate:J

.field public popType:I

.field public subjectDN:Ljava/lang/String;

.field public transport:I

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->profileType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->cmpServerURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->iakLength:J

    iget-wide v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->iakLength:J

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->initialAuthenticationKey:[B

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->initialAuthenticationKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->subjectDN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->issuerDN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keySize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keyPairAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->popType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keyUsage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->transport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->notBeforeDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->notAfterDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keystoreType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->credentialStorageBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->hashAlgorithmType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJLjava/lang/String;Ljava/lang/String;)V
    .registers 35

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile;-><init>()V

    const-string v1, "CMP"

    iput-object v1, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->profileType:Ljava/lang/String;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->cmpServerURL:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->userName:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->initialAuthenticationKey:[B

    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->iakLength:J

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->subjectDN:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->issuerDN:Ljava/lang/String;

    move/from16 v8, p8

    iput v8, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->keySize:I

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->keyPairAlgorithm:Ljava/lang/String;

    move/from16 v10, p10

    iput v10, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->popType:I

    move/from16 v11, p11

    iput v11, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->keyUsage:I

    move/from16 v12, p12

    iput v12, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->transport:I

    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->notBeforeDate:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->notAfterDate:J

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->certificateAlias:Ljava/lang/String;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/samsung/android/knox/keystore/CMPProfile;->keystoreType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getProfileType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->profileType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->profileType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->cmpServerURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->iakLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->initialAuthenticationKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->subjectDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->issuerDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keyPairAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->popType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keyUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->transport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->notBeforeDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->notAfterDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keystoreType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->credentialStorageBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->hashAlgorithmType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
