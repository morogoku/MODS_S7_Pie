.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/UserController$3;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController$3;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;->f$0:Lcom/android/server/am/UserController$3;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;->f$0:Lcom/android/server/am/UserController$3;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/am/UserController$3;->lambda$userStopped$0(Lcom/android/server/am/UserController$3;IZ)V

    return-void
.end method
