.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSSession;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSSession;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;->f$0:Lcom/samsung/android/server/virtualspace/VSSession;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;->f$1:I

    iput p3, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;->f$0:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;->f$1:I

    iget v2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$NWweRys3pIBwCWZWjBqmzs-loVE;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/virtualspace/VSSession;->lambda$onAppOrientationUpdated$5(Lcom/samsung/android/server/virtualspace/VSSession;II)V

    return-void
.end method
