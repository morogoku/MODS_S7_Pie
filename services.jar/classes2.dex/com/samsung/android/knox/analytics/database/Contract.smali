.class public final Lcom/samsung/android/knox/analytics/database/Contract;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;,
        Lcom/samsung/android/knox/analytics/database/Contract$DatabaseSize;,
        Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;,
        Lcom/samsung/android/knox/analytics/database/Contract$Versioning;,
        Lcom/samsung/android/knox/analytics/database/Contract$SyntheticKey;,
        Lcom/samsung/android/knox/analytics/database/Contract$Events;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.knox.analytics.provider"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.knox.analytics.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
