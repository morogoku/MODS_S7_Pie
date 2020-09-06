.class public Lcom/android/server/nextapp/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field activityName:Ljava/lang/String;

.field apkVersion:Ljava/lang/String;

.field btStatus:I

.field consumeTime:I

.field dayOfWeek:I

.field error:Ljava/lang/String;

.field hourOfDay:I

.field launchTime:J

.field predictTime:I

.field prediction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field preloaded:Z

.field previousPkg:[Ljava/lang/String;

.field runningPkg:Ljava/lang/String;

.field screenOrientation:I

.field success:Z

.field wifiStatus:I


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/nextapp/Record;->hourOfDay:I

    iput v0, p0, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    iput-object v1, p0, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/nextapp/Record;->screenOrientation:I

    iput v0, p0, Lcom/android/server/nextapp/Record;->wifiStatus:I

    iput v0, p0, Lcom/android/server/nextapp/Record;->btStatus:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/nextapp/Record;->predictTime:I

    const-string/jumbo v2, "unknown"

    iput-object v2, p0, Lcom/android/server/nextapp/Record;->apkVersion:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/nextapp/Record;->consumeTime:I

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/android/server/nextapp/Record;->activityName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/nextapp/Record;->preloaded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/nextapp/Record;->prediction:Ljava/util/List;

    return-void
.end method

.method constructor <init>(II[Ljava/lang/String;IIILjava/lang/String;II)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/nextapp/Record;->hourOfDay:I

    iput p2, p0, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    iput-object p3, p0, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    iput p4, p0, Lcom/android/server/nextapp/Record;->screenOrientation:I

    iput p5, p0, Lcom/android/server/nextapp/Record;->wifiStatus:I

    iput p6, p0, Lcom/android/server/nextapp/Record;->btStatus:I

    iput-object p7, p0, Lcom/android/server/nextapp/Record;->apkVersion:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/nextapp/Record;->consumeTime:I

    iput p9, p0, Lcom/android/server/nextapp/Record;->predictTime:I

    return-void
.end method


# virtual methods
.method isValid()Z
    .registers 3

    iget v0, p0, Lcom/android/server/nextapp/Record;->hourOfDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x1

    return v0

    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Record;->hourOfDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " previous:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/nextapp/Record;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " running:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screenOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Record;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Record;->wifiStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Record;->btStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " predictTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Record;->predictTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apkVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/nextapp/Record;->apkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " consumeTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Record;->consumeTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " preloaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/nextapp/Record;->preloaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
