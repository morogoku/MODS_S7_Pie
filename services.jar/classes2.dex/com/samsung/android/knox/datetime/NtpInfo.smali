.class public Lcom/samsung/android/knox/datetime/NtpInfo;
.super Ljava/lang/Object;
.source "NtpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/datetime/NtpInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_SET_INT:I

.field public static final NOT_SET_LONG:J


# instance fields
.field private mMaxAttempts:I

.field private mPollingInterval:J

.field private mPollingIntervalShorter:J

.field private mServer:Ljava/lang/String;

.field private mTimeErrorThreshold:I

.field private mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/datetime/NtpInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/datetime/NtpInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/datetime/NtpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_ntpServer"

    const-string/jumbo v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "config_ntpTimeout"

    const-string v5, "integer"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    const-string/jumbo v5, "ntp_server"

    invoke-static {v1, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ntp_timeout"

    invoke-static {v1, v6, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    if-eqz v5, :cond_57

    move-object v6, v5

    goto :goto_58

    :cond_57
    move-object v6, v2

    :goto_58
    iput-object v6, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "config_ntpPollingInterval"

    const-string v9, "integer"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "config_ntpPollingIntervalShorter"

    const-string v9, "integer"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "config_ntpRetry"

    const-string v9, "integer"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "config_ntpThreshold"

    const-string v9, "integer"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/datetime/NtpInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/datetime/NtpInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxAttempts()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    return v0
.end method

.method public getPollingInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    return-wide v0
.end method

.method public getPollingIntervalShorter()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    return-wide v0
.end method

.method public getServer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeErrorThreshold()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    return v0
.end method

.method public getTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    return-wide v0
.end method

.method public setMaxAttempts(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    return-void
.end method

.method public setPollingInterval(J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    return-void
.end method

.method public setPollingIntervalShorter(J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    return-void
.end method

.method public setTimeErrorThreshold(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    return-void
.end method

.method public setTimeout(J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " maxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pollingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pollingIntervalShorter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " timeErrorThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
