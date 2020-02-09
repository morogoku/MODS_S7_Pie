.class public abstract Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractLogdSizePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final DEFAULT_SNET_TAG:Ljava/lang/String; = "I"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOW_RAM_CONFIG_PROPERTY_KEY:Ljava/lang/String; = "ro.config.low_ram"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELECT_LOGD_DEFAULT_SIZE_VALUE:Ljava/lang/String; = "262144"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELECT_LOGD_MINIMUM_SIZE_VALUE:Ljava/lang/String; = "65536"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELECT_LOGD_SIZE_PROPERTY:Ljava/lang/String; = "persist.logd.size"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELECT_LOGD_SNET_TAG_PROPERTY:Ljava/lang/String; = "persist.log.tag.snet_event_log"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field
