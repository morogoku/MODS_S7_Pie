.class abstract Lcom/android/server/accessibility/BaseEventStreamTransformation;
.super Ljava/lang/Object;
.source "BaseEventStreamTransformation.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# instance fields
.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object v0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
