.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RPCAzO-3ULI7A-n3EXyFMF-rBdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RPCAzO-3ULI7A-n3EXyFMF-rBdk;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RPCAzO-3ULI7A-n3EXyFMF-rBdk;->f$0:I

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateObservedEventsLocked$2(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method
