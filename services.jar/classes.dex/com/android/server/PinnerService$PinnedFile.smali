.class final Lcom/android/server/PinnerService$PinnedFile;
.super Ljava/lang/Object;
.source "PinnerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinnedFile"
.end annotation


# instance fields
.field final bytesPinned:I

.field final fileName:Ljava/lang/String;

.field private mAddress:J

.field final mapSize:I


# direct methods
.method constructor <init>(JILjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    iput p3, p0, Lcom/android/server/PinnerService$PinnedFile;->mapSize:I

    iput-object p4, p0, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    iget-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    iget v2, p0, Lcom/android/server/PinnerService$PinnedFile;->mapSize:I

    int-to-long v2, v2

    # invokes: Lcom/android/server/PinnerService;->safeMunmap(JJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PinnerService;->access$400(JJ)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    :cond_14
    return-void
.end method

.method public finalize()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    return-void
.end method
