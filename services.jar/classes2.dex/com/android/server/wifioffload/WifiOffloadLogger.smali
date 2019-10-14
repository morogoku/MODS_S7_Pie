.class public Lcom/android/server/wifioffload/WifiOffloadLogger;
.super Ljava/lang/Object;
.source "WifiOffloadLogger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WifiOffloadLogger"


# instance fields
.field private mBuffer:[Ljava/lang/String;

.field private final mBufferSize:I

.field private mPos:I

.field private mPrefixDate:Z

.field private final sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->sdf:Ljava/text/SimpleDateFormat;

    iput p1, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBufferSize:I

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadLogger;->initBuffer()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->sdf:Ljava/text/SimpleDateFormat;

    iput-boolean p2, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPrefixDate:Z

    iput p1, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBufferSize:I

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadLogger;->initBuffer()V

    return-void
.end method

.method private addLine(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPrefixDate:Z

    if-eqz v0, :cond_33

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_33
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBuffer:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    iget v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    iget v1, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBufferSize:I

    if-lt v0, v1, :cond_48

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    :cond_48
    return-void
.end method

.method private initBuffer()V
    .registers 2

    iget v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBufferSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBuffer:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getLines()[Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    :cond_9
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBuffer:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_12

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBufferSize:I

    rem-int v2, v4, v5

    if-ne v2, v1, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v3
.end method

.method public logLastDiscourse()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadLogger;->logLastDiscourse(Z)V

    return-void
.end method

.method public logLastDiscourse(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    const-string v0, "WifiOffloadLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last activities: [Current Position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifioffload/WifiOffloadLogger;->getLines()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_46

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_46
    return-void
.end method

.method public logLastDiscourse(Z)V
    .registers 7

    const-string v0, "WifiOffloadLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last activities: [Current Position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadLogger;->mBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifioffload/WifiOffloadLogger;->getLines()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2

    if-eqz p1, :cond_39

    const-string v4, "WifiOffloadLogger"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_39
    const-string v4, "WifiOffloadLogger"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_41
    return-void
.end method

.method public logString(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadLogger;->addLine(Ljava/lang/String;)V

    return-void
.end method
