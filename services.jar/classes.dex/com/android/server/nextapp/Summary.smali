.class public Lcom/android/server/nextapp/Summary;
.super Ljava/lang/Object;
.source "Summary.java"


# instance fields
.field buildtime:J

.field right:I

.field total:I

.field trainTime:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/nextapp/Summary;->total:I

    iput v0, p0, Lcom/android/server/nextapp/Summary;->right:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/nextapp/Summary;->buildtime:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/nextapp/Summary;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/nextapp/Summary;->total:I

    iput v0, p0, Lcom/android/server/nextapp/Summary;->total:I

    iget v0, p1, Lcom/android/server/nextapp/Summary;->right:I

    iput v0, p0, Lcom/android/server/nextapp/Summary;->right:I

    iget-wide v0, p1, Lcom/android/server/nextapp/Summary;->buildtime:J

    iput-wide v0, p0, Lcom/android/server/nextapp/Summary;->buildtime:J

    iget-wide v0, p1, Lcom/android/server/nextapp/Summary;->trainTime:J

    iput-wide v0, p0, Lcom/android/server/nextapp/Summary;->trainTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Summary;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/Summary;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " buildtime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " trainTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/nextapp/Summary;->trainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
