.class public Lcom/att/iqi/lib/Timestamp;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/att/iqi/lib/Timestamp;->a:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/att/iqi/lib/Timestamp;->a:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/lib/Timestamp;->a:J

    return-wide v0
.end method
