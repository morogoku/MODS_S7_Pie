.class public final synthetic Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:[B

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>([B[BZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;->f$0:[B

    iput-object p2, p0, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;->f$1:[B

    iput-boolean p3, p0, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;->f$0:[B

    iget-object v1, p0, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;->f$1:[B

    iget-boolean v2, p0, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$-78EsgTnwJ0kIrpwI_2HJaD5ODM;->f$2:Z

    check-cast p1, Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->lambda$hasMappedAccessory$0([B[BZLcom/samsung/android/friends/cmdsvc/CmdSvc;)Z

    move-result p1

    return p1
.end method
