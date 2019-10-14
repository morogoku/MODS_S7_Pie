.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSSession;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSSession;IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$0:Lcom/samsung/android/server/virtualspace/VSSession;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$1:I

    iput p3, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$2:I

    iput p4, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$3:I

    iput p5, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$4:I

    iput p6, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$0:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$1:I

    iget v2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$2:I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$3:I

    iget v4, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$4:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$-z056sa-mCXdk8FArj01mFyFsI4;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/server/virtualspace/VSSession;->lambda$onDisplayBoundsUpdated$3(Lcom/samsung/android/server/virtualspace/VSSession;IIIII)V

    return-void
.end method
