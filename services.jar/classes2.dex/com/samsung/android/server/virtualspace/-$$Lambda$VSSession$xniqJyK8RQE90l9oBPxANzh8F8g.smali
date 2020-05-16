.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$xniqJyK8RQE90l9oBPxANzh8F8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSSession;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSSession;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$xniqJyK8RQE90l9oBPxANzh8F8g;->f$0:Lcom/samsung/android/server/virtualspace/VSSession;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$xniqJyK8RQE90l9oBPxANzh8F8g;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$xniqJyK8RQE90l9oBPxANzh8F8g;->f$0:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$xniqJyK8RQE90l9oBPxANzh8F8g;->f$1:I

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSSession;->lambda$onShowVirtualKeyboard$6(Lcom/samsung/android/server/virtualspace/VSSession;I)V

    return-void
.end method
