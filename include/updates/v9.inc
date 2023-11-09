<?php

/**
 * @file
 * Contains varbase_carousels_update_9###(s) hook updates.
 */

use Vardot\Entity\EntityDefinitionUpdateManager;

/**
 * Issue #3222166: Fix Entity Storage Exception on Column not found.
 */
function varbase_carousels_update_9001() {

  // --------------------------------------------------------------------------.
  // Entity updates to clear up any mismatched entity and/or field definitions
  // And Fix changes were detected in the entity type and field definitions.
  \Drupal::classResolver()
    ->getInstanceFromDefinition(EntityDefinitionUpdateManager::class)
    ->applyUpdates();

  // Full flash and clear cash and rebuilding.
  drupal_flush_all_caches();
}
